﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Kurzusok.Data;
using Kurzusok.Models;
using Microsoft.AspNetCore.Authorization;
using Kurzusok.ViewModels;
using Microsoft.AspNetCore.Http;


namespace Kurzusok.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {
        private readonly KurzusokContext _context;
        private HomeViewModel _homeViewModel;
        public HomeController(KurzusokContext context/*, HomeViewModel homeViewModel*/)
        {
            //_homeViewModel = homeViewModel;
            _homeViewModel = new HomeViewModel();
            _context = context;
        }
        public IActionResult Index()
        {
            string SessionSemesterId = HttpContext.Session.GetString("SemesterId");
            int currentSemesterId;
            if (!string.IsNullOrEmpty(SessionSemesterId))
            {
                currentSemesterId = Convert.ToInt32(SessionSemesterId);
            }
            else
            {
                var semesters = _context.Semester.ToListAsync();
                currentSemesterId = semesters.Result.Last().Id;
            }
            return RedirectToAction(nameof(Index), new { currentSemesterId });
        }

        // GET: Home/{semester}
        [Authorize]
        [Route("{currentSemesterId}")]
        public async Task<IActionResult> Index(int currentSemesterId, string anysearch)
        {
            //Összes szemeszter lekérdezése
            var semesters = _context.Semester.ToListAsync();
            _homeViewModel.SemestersList = await semesters;
            int lastId = _homeViewModel.SemestersList.Last().Id;
            Semester currentSemester;
            if (!string.IsNullOrEmpty(anysearch))
            {
                currentSemester = await _context.Semester.Where(c => c.Id == currentSemesterId).FirstOrDefaultAsync();
                List<Subjects> currentSemesterSubjects = new List<Subjects>();
                var searchedTeacher = await _context.Teachers.Where(c => c.Name.Contains(anysearch)).Select(d => d.TeacherId).ToListAsync();
                List<Subjects> searchedSubjectwTeacher;
                if (searchedTeacher.Count!=0)
                {
                    searchedSubjectwTeacher = await _context.Subjects.Where(c=>c.SemesterId==currentSemester.Id && c.Courses.Any((b => b.TeachersLink.Any(b => searchedTeacher.Contains(b.TeacherId))))).Include(k => k.Courses).ThenInclude(b => b.TeachersLink).ThenInclude(b => b.Teacher).Include(k => k.ProgrammesLink).ThenInclude(k => k.Programme).ToListAsync();
                    currentSemesterSubjects = searchedSubjectwTeacher;
                }
                var searchedProgramme = await _context.Programmes.Where(c => c.Name.Contains(anysearch)).Select(d => d.ProgrammeId).ToListAsync();
                List<Subjects> searchedSubjectwProgramme;
                if (searchedProgramme.Count != 0)
                {
                    searchedSubjectwProgramme = await _context.Subjects.Where(c => c.SemesterId == currentSemester.Id && c.ProgrammesLink.Any(b => searchedProgramme.Contains(b.ProgrammeId))).Include(k=>k.ProgrammesLink).ThenInclude(k => k.Programme).Include(k => k.Courses).ThenInclude(b => b.TeachersLink).ThenInclude(b => b.Teacher).ToListAsync();
                    if (searchedTeacher.Count != 0)
                    {
                        searchedSubjectwProgramme.RemoveAll(item => currentSemester.Subjects.Contains(item));
                    }
                    foreach (var item in searchedSubjectwProgramme)
                    {
                        currentSemesterSubjects.Add(item);
                    }      
                }
                var searchedSubject = await _context.Subjects.Where(c => c.Name.Contains(anysearch) && c.SemesterId == currentSemester.Id).Include(k => k.ProgrammesLink).ThenInclude(k => k.Programme).Include(k => k.Courses).ThenInclude(b => b.TeachersLink).ThenInclude(b => b.Teacher).ToListAsync();
                if (searchedSubject.Count!=0)
                {
                    if (searchedProgramme.Count != 0 || searchedTeacher.Count != 0)
                    {
                        searchedSubject.RemoveAll(item => currentSemester.Subjects.Contains(item));
                    }
                    foreach (var item in searchedSubject)
                    {
                        currentSemesterSubjects.Add(item);
                    }
                }
                //currentSemester = _context.Semester.Where(c => c.Id == currentSemesterId).Include(b => b.Subjects.Where(d => searchedSubject.Contains(d.Name))).ThenInclude(k => k.Courses).ThenInclude(b => b.TeachersLink.Where(d=>searchedTeacher.Contains(d.TeacherId))).ThenInclude(b => b.Teacher).Include(b => b.Subjects.Where(d => searchedSubject.Contains(d.Name))).ThenInclude(k => k.ProgrammesLink.Where(d => searchedProgramme.Contains(d.ProgrammeId))).ThenInclude(k => k.Programme).FirstOrDefaultAsync();
            }
            else
            {
                //Egy adott szemeszter lekérdezése tárgyakkal
                currentSemester = await _context.Semester.Where(c => c.Id == currentSemesterId).Include(b => b.Subjects).ThenInclude(k => k.Courses).ThenInclude(b => b.TeachersLink).ThenInclude(b => b.Teacher).Include(b => b.Subjects).ThenInclude(k => k.ProgrammesLink).ThenInclude(k => k.Programme).FirstOrDefaultAsync();
                if (currentSemester == null) //Ha nincs a megadott ID-s szemeszter akkor az utolsót kérdezzük le
                {
                    currentSemester = await _context.Semester.Where(c => c.Id == lastId).Include(b => b.Subjects).ThenInclude(k => k.Courses).ThenInclude(b => b.TeachersLink).ThenInclude(b => b.Teacher).Include(b => b.Subjects).ThenInclude(k => k.ProgrammesLink).ThenInclude(k => k.Programme).FirstOrDefaultAsync();
                    HttpContext.Session.SetString("SemesterId", Convert.ToString(lastId));
                }
                else
                {
                    HttpContext.Session.SetString("SemesterId", Convert.ToString(currentSemesterId));
                }
            }
            _homeViewModel.CurrentSemester = currentSemester;
            return View(_homeViewModel);
        }

        // GET: Create subject
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> CreateSubject(int id)
        {
            Console.WriteLine(id);
            Subjects sbj = new Subjects
            {
                SemesterId = int.Parse(HttpContext.Session.GetString("SemesterId"))
            };
            var programmes = await _context.Programmes.ToListAsync();
            ViewBag.programmes = programmes;
            return PartialView("_SubjectModalPartial", sbj);
        }

        // POST:  Create subject
        [Authorize(Roles = "Admin")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> CreateSubjectPost([Bind("Id,SemesterId,SubjectCode,Name,EHours,GyHours")] Subjects subjects, List<int> Programmes, List<string> educationType, List<int> Obligatory)
        {
            if (ModelState.IsValid && Programmes.Count() > 0)
            {
                for (int i = 0; i < Programmes.Count(); i++)
                {
                    SubjectProgrammes pr = new SubjectProgrammes()
                    {
                        ProgrammeId = Programmes[i],
                        EducationType = educationType[i],
                        Subject = subjects
                    };
                    if (Obligatory[i] == 1)
                    {
                        pr.Obligatory = true;
                    }
                    else
                    {
                        pr.Obligatory = false;

                    }
                    _context.Add(pr);
                    await _context.SaveChangesAsync();
                }
                string subjectId = Convert.ToString(subjects.SubjectId);
                return Json(new { isvalid = true, createCourse = true, subjectid = subjectId });
            }
            return Json(new { isvalid = false, responseText = "Helytelen adatokat adtál meg." });

        }
        // GET: Create Course
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> CreateCourse(int id)
        {
            Courses crs = new Courses
            {
                SubjectId = id
            };
            var teachers = await _context.Teachers.ToListAsync();//Tanárok listája viewbagbe
            ViewBag.teachers = teachers;
            return PartialView("_CourseModalPartial", crs);
        }
        //POST: Create Course
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> CreateCoursePost([Bind("Id,SubjectId,NeptunOk,CourseType,Hours,CourseCode,Members,Classroom,Software,Comment")] Courses course, 
            List<int> Teachers, List<int> LoadList)
        {
            if (ModelState.IsValid && Teachers.Count() > 0 && Teachers.Count() == LoadList.Count())
            {
                List<CoursesTeachers> CourseTeachers = new List<CoursesTeachers>();
                for (int i = 0; i < Teachers.Count(); i++)
                {
                    CoursesTeachers CourseTeacher = new CoursesTeachers()
                    {
                        TeacherId = Teachers[i],
                        Loads = LoadList[i]
                    };
                    CourseTeachers.Add(CourseTeacher);
                    Console.WriteLine(Teachers[i] + "tanárnak a terheltsége:" + LoadList[i]);
                }
                course.TeachersLink = CourseTeachers;

                _context.Courses.Add(course);
                await _context.SaveChangesAsync();
                string subjectId = Convert.ToString(course.SubjectId);
                return Json(new { isvalid = true, responseText = "Jó adatok.", subjectid = subjectId });
            }
            return Json(new { isvalid = false, responseText = "Rossz adatok." });
        }
        //POST:  Create Semester
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> CreateSemester(string LastSemester)
        {
            int[] NewSemesterNumbers = LastSemester.Split('/').Select(int.Parse).ToArray();
            int startIteration = 0;
            if (NewSemesterNumbers[2] == 1)
            {
                startIteration = NewSemesterNumbers.Length - 1;
            }
            else
            {
                NewSemesterNumbers[2] = 0; //Ne folyjon át 3ra a szemeszter
            }
            for (int i = startIteration; i < NewSemesterNumbers.Length; i++)
            {
                NewSemesterNumbers[i]++;
            }
            string NewSemesterStr = "";
            int[] CopySemesterNumbers = NewSemesterNumbers; //CopySemester, aminek elemeit le kell másolni az új félévhez
            string CopySemesterStr = "";
            for (int i = 0; i < NewSemesterNumbers.Length; i++)
            {
                if (i == 2)
                {
                    NewSemesterStr += NewSemesterNumbers[i];
                    CopySemesterStr += CopySemesterNumbers[i];
                }
                else
                {
                    NewSemesterStr += NewSemesterNumbers[i] + "/";
                    CopySemesterStr += --CopySemesterNumbers[i] + "/";
                }
            }
            var CopySemesterObject = _context.Semester.Where(c => c.Date == CopySemesterStr).Include(b => b.Subjects).ThenInclude(k => k.Courses).ThenInclude(b => b.TeachersLink).ThenInclude(b => b.Teacher).Include(b => b.Subjects).ThenInclude(k => k.ProgrammesLink).ThenInclude(k => k.Programme).FirstOrDefault();
            Semester newSemester = new Semester
            {
                Date = NewSemesterStr,
                Weeks = 13,
            };
            List<Subjects> newSubjectList = new List<Subjects>();
            foreach (var copySubject in CopySemesterObject.Subjects)
            {
                Subjects newSubject = new Subjects
                {
                    SemesterId = newSemester.Id,
                    SubjectCode = copySubject.SubjectCode,
                    EHours = copySubject.EHours,
                    GyHours = copySubject.GyHours,
                    Name = copySubject.Name,
                    Semester = newSemester
                };
                List<Courses> newCourseList = new List<Courses>();
                foreach (var copyCourse in copySubject.Courses)
                {
                    Courses newCourse = new Courses
                    {
                        Classroom = copyCourse.Classroom,
                        Comment = copyCourse.Comment,
                        CourseCode = copyCourse.CourseCode,
                        CourseType = copyCourse.CourseType,
                        Hours = copyCourse.Hours,
                        Members = copyCourse.Members,
                        Software = copyCourse.Software,
                        SubjectId = newSubject.SubjectId,
                        Subject = newSubject
                    };
                    List<CoursesTeachers> newCoursesTeachersList = new List<CoursesTeachers>();
                    foreach (var copyCoursesTeachers in copyCourse.TeachersLink)
                    {
                        CoursesTeachers newCoursesTeachers = new CoursesTeachers
                        {
                            Teacher = copyCoursesTeachers.Teacher,
                            TeacherId = copyCoursesTeachers.TeacherId,
                            Course = newCourse,
                            CourseId = newCourse.CourseId,
                            Loads = copyCoursesTeachers.Loads
                        };
                        newCoursesTeachersList.Add(newCoursesTeachers);
                    }
                    newCourse.TeachersLink = newCoursesTeachersList;
                    newCourseList.Add(newCourse);
                }
                newSubject.Courses = newCourseList;
                List<SubjectProgrammes> newSubjectProgrammesList = new List<SubjectProgrammes>();
                foreach (var copySubjectProgrammes in copySubject.ProgrammesLink)
                {
                    SubjectProgrammes newSubjectProgrammes = new SubjectProgrammes
                    {
                        EducationType = copySubjectProgrammes.EducationType,
                        Obligatory = copySubjectProgrammes.Obligatory,
                        Programme = copySubjectProgrammes.Programme,
                        ProgrammeId = copySubjectProgrammes.ProgrammeId,
                        Subject = newSubject,
                        SubjectId = newSubject.SubjectId
                    };
                    newSubjectProgrammesList.Add(newSubjectProgrammes);
                }
                newSubject.ProgrammesLink = newSubjectProgrammesList;
                newSubjectList.Add(newSubject);
            }
            newSemester.Subjects = newSubjectList;
            _context.Add(newSemester);
            await _context.SaveChangesAsync();
            HttpContext.Session.SetString("SemesterId", "");
            return RedirectToAction(nameof(Index));

        }
        // DELETE Semester
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> SemesterDelete(int id)
        {
            var currentSemester = await _context.Semester.Where(c => c.Id == id).FirstOrDefaultAsync();
            var currentSubjects = await _context.Subjects.Where(c => c.SemesterId == currentSemester.Id).ToListAsync();
            List<List<Courses>> currentCourses = new List<List<Courses>>();
            List<List<CoursesTeachers>> currentCoursesTeachers = new List<List<CoursesTeachers>>();
            foreach (var subject in currentSubjects)
            {
                var curCourse = _context.Courses.Where(c => c.SubjectId == subject.SubjectId).ToList();
                currentCourses.Add(curCourse);
                foreach (var course in curCourse)
                {
                    currentCoursesTeachers.Add(_context.CoursesTeachers.Where(c => c.CourseId == course.CourseId).ToList());
                }
            }

            List<List<SubjectProgrammes>> currentSubjectProgrammes = new List<List<SubjectProgrammes>>();
            foreach (var subject in currentSubjects)
            {
                currentSubjectProgrammes.Add(_context.SubjectProgrammes.Where(c => c.SubjectId == subject.SubjectId).ToList());
            }
            _context.Semester.Remove(currentSemester);
            await _context.SaveChangesAsync();
            HttpContext.Session.SetString("SemesterId", "");
            return RedirectToAction(nameof(Index));
        }

        // GET: Home/EditSubject/5
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> EditSubject(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            int subjectid = (int)id;

            var sbj = await _context.Subjects.Where(c => c.SubjectId == subjectid).Include(a => a.ProgrammesLink).FirstOrDefaultAsync();

            if (sbj == null)
            {
                return NotFound();
            }
            var programmes = await _context.Programmes.ToListAsync();
            ViewBag.programmes = programmes;
            return PartialView("_SubjectModalEditPartial", sbj);
        }

        // POST: Home/EditSubjectPost
        [Authorize(Roles = "Admin")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> EditSubjectPost([Bind("SubjectId,SemesterId,SubjectCode,Name,EHours,GyHours")] Subjects subjects, List<int> Programmes, List<string> educationType, List<int> Obligatory)
        {

            if (ModelState.IsValid && Programmes.Count() > 0)
            {
                var sbj_prgs = await _context.SubjectProgrammes.Where(c => c.SubjectId == subjects.SubjectId).ToListAsync();
                foreach (var sbj_prg in sbj_prgs)
                {
                    _context.SubjectProgrammes.Remove(sbj_prg);
                }
                List<SubjectProgrammes> subjectProgrammes = new List<SubjectProgrammes>();
                for (int i = 0; i < Programmes.Count(); i++)
                {
                    SubjectProgrammes subjectProgramme = new SubjectProgrammes()//Egy subjectprogramme beállítása
                    {
                        ProgrammeId = Programmes[i],
                        EducationType = educationType[i]
                    };
                    if (Obligatory[i] == 1)
                    {
                        subjectProgramme.Obligatory = true;
                    }
                    else
                    {
                        subjectProgramme.Obligatory = false;

                    }
                    subjectProgrammes.Add(subjectProgramme);//Listába 
                }
                subjects.ProgrammesLink = subjectProgrammes;

                try
                {
                    _context.Update(subjects);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!SubjectsExists(subjects.SubjectId))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return Json(new { isvalid = true, responseText = "Jó adatok.", subjectid = subjects.SubjectId });
            }
            return Json(new { isvalid = false, responseText = "Rossz adatok." });

        }
        // GET: Home/EditCourse/5
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> EditCourse(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            int courseid = (int)id;
            Console.WriteLine(courseid);
            var crs = await _context.Courses.Where(c => c.CourseId == courseid).Include(a => a.TeachersLink).FirstOrDefaultAsync();
            if (crs == null)
            {
                return NotFound();
            }
            var teachers = await _context.Teachers.ToListAsync();
            ViewBag.teachers = teachers;
            return PartialView("_CourseModalEditPartial", crs);
        }
        //POST: Edit Course
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> EditCoursePost([Bind("CourseId,SubjectId,NeptunOk,CourseType,Hours,CourseCode,Members,Classroom,Software,Comment")] Courses course,
            List<int> Teachers, List<int> LoadList)
        {
            if (ModelState.IsValid && Teachers.Count() > 0 && Teachers.Count() == LoadList.Count())
            {
                var crs_tchrs = await _context.CoursesTeachers.Where(c => c.CourseId == course.CourseId).ToListAsync();
                foreach (var crs_tchr in crs_tchrs)
                {
                    _context.CoursesTeachers.Remove(crs_tchr);
                }

                List<CoursesTeachers> CourseTeachers = new List<CoursesTeachers>();
                for (int i = 0; i < Teachers.Count(); i++)
                {
                    CoursesTeachers CourseTeacher = new CoursesTeachers()
                    {
                        TeacherId = Teachers[i],
                        Loads = LoadList[i]
                    };
                    CourseTeachers.Add(CourseTeacher);
                    Console.WriteLine(Teachers[i] + "tanárnak a terheltsége:" + LoadList[i]);
                }
                course.TeachersLink = CourseTeachers;

                try
                {
                    _context.Update(course);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!SubjectsExists(course.CourseId))
                    {
                        return NotFound();
                    }
                    else
                    {
                        Console.WriteLine("Nem igazán sikerült updatelni");
                        throw;
                    }
                }
                return Json(new { isvalid = true, responseText = "Jó adatok."});
            }
            return Json(new { isvalid = false, responseText = "Rossz adatok." });
        }
        // POST: Home/SubjectDeleteDelete/5
        [Authorize(Roles = "Admin")]
        [Route("Home/SubjectDelete/{id?}")]
        public async Task<IActionResult> SubjectDelete(int id)
        {
            var currentSubject = await _context.Subjects.Where(c => c.SubjectId == id).FirstAsync();
            var currentCourses = _context.Courses.Where(c => c.SubjectId == id).ToList();
            List<List<CoursesTeachers>> currentCoursesTeachers = new List<List<CoursesTeachers>>();
            foreach (var course in currentCourses)
            {
                currentCoursesTeachers.Add(_context.CoursesTeachers.Where(c => c.CourseId == course.CourseId).ToList());
            }
            var currentSubjectProgrammes = await _context.SubjectProgrammes.Where(c => c.SubjectId == id).ToListAsync();
            _context.Subjects.Remove(currentSubject);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }
        private bool SubjectsExists(int id)
        {
            return _context.Subjects.Any(e => e.SubjectId == id);
        }

        // POST: Home/CourseDelete/5
        [Authorize(Roles = "Admin")]
        [Route("Home/CourseDelete/{id?}")]
        public async Task<IActionResult> CourseDelete(int id)
        {
            var currentCourses = _context.Courses.Where(c => c.CourseId == id).First();
            var currentCoursesTeachers = _context.CoursesTeachers.Where(c => c.CourseId == id).ToList();
            _context.Courses.Remove(currentCourses);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        [Authorize]
        public IActionResult AnySearch(string anysearch)
        {
            int currentSemesterId = Convert.ToInt32(HttpContext.Session.GetString("SemesterId"));
            return RedirectToAction(nameof(Index), new { currentSemesterId, anysearch });
        }
    }
}
