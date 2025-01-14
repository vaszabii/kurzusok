﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Kurzusok.Data;
using Kurzusok.Models;
using Microsoft.AspNetCore.Authorization;
using Kurzusok.ViewModels;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;


namespace Kurzusok.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {
        private readonly KurzusokContext _context;
#pragma warning disable IDE0044 // Add readonly modifier
        private HomeViewModel _homeViewModel;
#pragma warning restore IDE0044 // Add readonly modifier
        private readonly UserManager<IdentityUser> _userManager;
        public HomeController(KurzusokContext context, UserManager<IdentityUser> userManager/*, HomeViewModel homeViewModel*/)
        {
            //_homeViewModel = homeViewModel;
            _userManager = userManager;
            _homeViewModel = new HomeViewModel();
            _context = context;
        }
        [Authorize]
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
                var semesters = _context.Semester.OrderBy(b=>b.Date).ToListAsync();
                currentSemesterId = semesters.Result.Last().Id;
                HttpContext.Session.SetString("SemesterId", Convert.ToString(currentSemesterId));
            }
            string SessionTraining = HttpContext.Session.GetString("Training");
            string training;
            if (!string.IsNullOrEmpty(SessionTraining))
            {
                training = SessionTraining;
            }
            else
            {
                training = "Nappali";
                HttpContext.Session.SetString("Training", "Nappali");
            }

            return RedirectToAction(nameof(Index), new { currentSemesterId, training });
        }

        // GET: Home/{semester}/{training}
        [Authorize]
        [Route("{currentSemesterId}/{training}")]
        public async Task<IActionResult> Index(int currentSemesterId, string training, string anysearch)
        {
            if (TempData.ContainsKey("ErrorMessage"))
            {
                ModelState.AddModelError("ReadError", TempData["ErrorMessage"].ToString());
                TempData.Remove("ErrorMessage");
            }
            if (training!="Levelezos" && training!="Nappali")
            {
                return Index();
            }
            //Összes szemeszter lekérdezése
            var semesters = _context.Semester.OrderBy(b=>b.Date).ToListAsync();
            _homeViewModel.SemestersList = await semesters;

            int lastId = _homeViewModel.SemestersList.Last().Id;
            if (training == "Levelezos")
            {
                training = "Levelezős";
            }
            var neededTrainingProgrammes = await _context.Programmes.Where(c => c.Training == training.ToLower()).Select(c => c.ProgrammeId).ToListAsync(); // Nappali vagy levelezős szakok lekérése
            Semester currentSemester;
            if (!string.IsNullOrEmpty(anysearch))
            {
                currentSemester = await _context.Semester.Where(c => c.Id == currentSemesterId).FirstOrDefaultAsync();
                if (currentSemester == null)
                {
                    currentSemester = await _context.Semester.Where(c => c.Id == lastId).FirstOrDefaultAsync();
                    HttpContext.Session.SetString("SemesterId", Convert.ToString(lastId));
                }
                else
                {
                    HttpContext.Session.SetString("SemesterId", Convert.ToString(currentSemesterId));
                }
                List<Subjects> currentSemesterSubjects = new List<Subjects>();
                var searchedTeacher = await _context.Teachers.Where(c => c.Name.Contains(anysearch)).Select(d => d.TeacherId).ToListAsync();
                List<Subjects> searchedSubjectwTeacher;
                if (searchedTeacher.Count != 0)
                {
                    searchedSubjectwTeacher = await _context.Subjects.Where(c => c.SemesterId == currentSemester.Id && c.ProgrammesLink.Any(b => neededTrainingProgrammes.Contains(b.ProgrammeId)) && c.Courses.Any(b => b.TeachersLink.Any(b => searchedTeacher.Contains(b.TeacherId)))).Include(k => k.Courses).ThenInclude(b => b.TeachersLink).ThenInclude(b => b.Teacher).Include(k => k.ProgrammesLink).ThenInclude(k => k.Programme).AsSplitQuery().ToListAsync();
                    currentSemesterSubjects = searchedSubjectwTeacher;
                }
                var searchedProgramme = await _context.Programmes.Where(c => c.Training == training.ToLower() && c.Name.Contains(anysearch)).Select(d => d.ProgrammeId).ToListAsync();
                List<Subjects> searchedSubjectwProgramme;
                if (searchedProgramme.Count != 0)
                {
                    searchedSubjectwProgramme = await _context.Subjects.Where(c => c.SemesterId == currentSemester.Id && c.ProgrammesLink.Any(b => searchedProgramme.Contains(b.ProgrammeId))).Include(k => k.ProgrammesLink).ThenInclude(k => k.Programme).Include(k => k.Courses).ThenInclude(b => b.TeachersLink).ThenInclude(b => b.Teacher).AsSplitQuery().ToListAsync();
                    if (searchedTeacher.Count != 0)
                    {
                        searchedSubjectwProgramme.RemoveAll(item => currentSemester.Subjects.Contains(item));
                    }
                    foreach (var item in searchedSubjectwProgramme)
                    {
                        currentSemesterSubjects.Add(item);
                    }
                }
                var searchedSubject = await _context.Subjects.Where(c => c.Name.Contains(anysearch) && c.SemesterId == currentSemester.Id && c.ProgrammesLink.Any(b => neededTrainingProgrammes.Contains(b.ProgrammeId))).Include(k => k.ProgrammesLink).ThenInclude(k => k.Programme).Include(k => k.Courses).ThenInclude(b => b.TeachersLink).ThenInclude(b => b.Teacher).AsSplitQuery().ToListAsync();
                if (searchedSubject.Count != 0)
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
            }
            else
            {
                //Egy adott szemeszter lekérdezése tárgyakkal
                currentSemester = await _context.Semester.Where(c => c.Id == currentSemesterId).Include(b => b.Subjects.Where(b => b.ProgrammesLink.Any(b => neededTrainingProgrammes.Contains(b.ProgrammeId)))).ThenInclude(k => k.Courses).ThenInclude(b => b.TeachersLink).ThenInclude(b => b.Teacher).Include(b => b.Subjects).ThenInclude(k => k.ProgrammesLink).ThenInclude(k => k.Programme).AsSplitQuery().FirstOrDefaultAsync();
                if (currentSemester == null) //Ha nincs a megadott ID-s szemeszter akkor az utolsót kérdezzük le
                {
                    currentSemester = await _context.Semester.Where(c => c.Id == lastId).Include(b => b.Subjects.Where(b => b.ProgrammesLink.Any(b => neededTrainingProgrammes.Contains(b.ProgrammeId)))).ThenInclude(k => k.Courses).ThenInclude(b => b.TeachersLink).ThenInclude(b => b.Teacher).Include(b => b.Subjects).ThenInclude(k => k.ProgrammesLink).ThenInclude(k => k.Programme).AsSplitQuery().FirstOrDefaultAsync();
                    HttpContext.Session.SetString("SemesterId", Convert.ToString(lastId));
                }
                else
                {
                    HttpContext.Session.SetString("SemesterId", Convert.ToString(currentSemesterId));
                }
            }
            if (training == "Levelezős")
            {
                training = "Levelezos";
            }
            HttpContext.Session.SetString("Training", training);
            _homeViewModel.CurrentSemester = currentSemester;
            //Warning üzenet létrehozása a kurzusokhoz
            List<List<string>> allTypeCheckForSubjects = new List<List<string>>();
            foreach (var item in _homeViewModel.CurrentSemester.Subjects)
            {
                List<string> typeCheck = new List<string>();
                if (item.EHours != null && item.EHours != 0)
                {
                    typeCheck.Add("Elmélet");
                }
                if (item.GyHours != null && item.GyHours != 0)
                {
                    typeCheck.Add("Gyakorlat");

                }
                if (item.LHours != null && item.LHours != 0)
                {
                    typeCheck.Add("Labor");
                }
                if (item.CorrespondHours != null && item.CorrespondHours != 0)
                {
                    typeCheck.Add("Elmélet");
                }
                foreach (var i in item.Courses)
                {
                    if (i.CourseType == "E-learning" || i.CourseType == "Egyéni felkészülés" || i.CourseType == "Csak Vizsga")
                    {
                        typeCheck.Clear();
                    }
                    else if (i.CourseType == "Elmélet")
                    {
                        typeCheck.RemoveAll(a => a == "Elmélet");
                    }
                    else if (i.CourseType == "Gyakorlat")
                    {
                        typeCheck.RemoveAll(a => a == "Gyakorlat");
                    }
                    else if (i.CourseType == "Labor")
                    {
                        typeCheck.RemoveAll(a => a == "Labor");
                    }
                }

                allTypeCheckForSubjects.Add(typeCheck);
            }
            ViewBag.allTypeCheckForSubjects = allTypeCheckForSubjects;

            return View(_homeViewModel);
        }

        // GET: Create subject
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> CreateSubject(int id)
        {
            Subjects sbj = new Subjects
            {
                SemesterId = id
            };
            var programmes = await _context.Programmes.ToListAsync();
            ViewBag.programmes = programmes;
            return PartialView("_SubjectModalPartial", sbj);
        }

        // POST:  Create subject
        [Authorize(Roles = "Admin")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> CreateSubjectPost([Bind("Id,SemesterId,SubjectCode,Name,EHours,GyHours,LHours,CorrespondHours,EducationType")] Subjects subjects, List<int> programmes)
        {
            if (ModelState.IsValid && programmes.Count() > 0)
            {
                List<ProgrammeDetails> prgDetails = new List<ProgrammeDetails>();
                for (int i = 0; i < programmes.Count(); i++)//Leelenőrizni, hogy van-e ilyen a mintatantervbe
                {
                    int id = programmes[i];
                    var prSubject = await _context.ProgrammeDetails.Where(c => c.ProgrammeId == programmes[i] && c.Name == subjects.Name && c.SubjectCode == subjects.SubjectCode).FirstOrDefaultAsync();//Megkeresi a tantrágyat
                    if (prSubject == null)//Ha nincs, akkor hibával visszatér
                    {
                        var prog = await _context.Programmes.Where(c => c.ProgrammeId == programmes[i]).FirstOrDefaultAsync();
                        string responseText = "A " + prog.Name + " " + prog.Training + " mintatantervben nem szerepel a megadott tárgy ilyen tárgynévvel vagy kóddal.";
                        return Json(new { isvalid = false, responseText });
                    }
                    else
                    {// Ha van, akkor hozzáadja a listához, később kelleni fog
                        prgDetails.Add(prSubject);
                    }
                }
                for (int i = 0; i < programmes.Count(); i++)
                {
                    SubjectProgrammes pr = new SubjectProgrammes()
                    {
                        ProgrammeId = programmes[i],
                        Obligatory = prgDetails[i].Obligatory,// Hozzáadja a mintatantervből, hogy kötelező-e
                        Subject = subjects
                    };
                    _context.Add(pr);
                    await _context.SaveChangesAsync();
                }
                string subjectId = Convert.ToString(subjects.SubjectId);
                return Json(new { isvalid = true, createCourse = true, subjectid = subjectId });
            }
            return Json(new { isvalid = false, responseText = "Hiba történt a tárgy hozzáadása közben." });

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
        [HttpPost]
        public async Task<IActionResult> CreateCoursePost([Bind("Id,SubjectId,NeptunOk,CourseType,CourseCode,Members,Classroom,Software,Comment")] Courses course, List<int> Teachers, List<int> LoadList)
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
                }

                course.TeachersLink = CourseTeachers;
                if (!string.IsNullOrEmpty(course.Comment))
                {
                    string newComment = $"[[${User.Identity.Name}$]]{course.Comment}";
                    course.Comment = newComment;
                }
                else
                {
                    course.Comment = null;
                }
                try
                {
                    _context.Courses.Add(course);
                    var success = await _context.SaveChangesAsync();
                    string subjectId = Convert.ToString(course.SubjectId);
                    if (success > 0)
                    {
                        return Json(new { isvalid = true, responseText = "Jó adatok.", subjectid = subjectId });
                    }
                    else
                    {

                        return Json(new { isvalid = false });
                    }
                }
                catch (DbUpdateConcurrencyException)
                {
                    return NotFound();
                }

            }
            else
            {
                return Json(new { isvalid = false, responseText = "Hibás adatok." });
            }
        }

        // GET: Create Course
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> CreateSemester()
        {
            var semesters = await _context.Semester.OrderBy(b=>b.Date).ToListAsync();
            return PartialView("_SemesterModalPartial", semesters);
        }

        //POST:  Create Semester
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> CreateSemesterPost(string LastSemester, int week, int withSubjects)
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
            Semester newSemester = null;
            if (withSubjects == 0)
            {
                for (int i = 0; i < NewSemesterNumbers.Length; i++)
                {
                    if (i == 2)
                    {
                        NewSemesterStr += NewSemesterNumbers[i];
                    }
                    else
                    {
                        NewSemesterStr += NewSemesterNumbers[i] + "/";
                    }
                }
                newSemester = new Semester
                {
                    Date = NewSemesterStr,
                    Weeks = week,
                };
            }
            else if (withSubjects == 1)
            {
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
                var checkSem = await _context.Semester.Where(c => c.Date == CopySemesterStr).FirstOrDefaultAsync();
                if (checkSem != null)
                {
                    newSemester = new Semester
                    {
                        Date = NewSemesterStr,
                        Weeks = week,
                    };
                    var CopySemesterObject = await _context.Semester.Where(c => c.Date == CopySemesterStr).Include(b => b.Subjects).ThenInclude(k => k.Courses).ThenInclude(b => b.TeachersLink).Include(b => b.Subjects).ThenInclude(k => k.ProgrammesLink).AsSplitQuery().FirstOrDefaultAsync();
                    if (CopySemesterObject.Subjects != null)
                    {

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
                                EducationType = copySubject.EducationType,
                                CorrespondHours = copySubject.CorrespondHours,
                                LHours = copySubject.LHours,
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
                    }
                }
                else
                {
                    int currentSemesterId= Convert.ToInt32(HttpContext.Session.GetString("SemesterId"));
                    string training = HttpContext.Session.GetString("Training");
                    TempData["ErrorMessage"] = "Probléma lépett fel a szemeszter hozzáadása közben!";
                    return RedirectToAction(nameof(Index), new { currentSemesterId, training });
                }
            }
            try
            {
                _context.Semester.Add(newSemester);
                var success = await _context.SaveChangesAsync();
                HttpContext.Session.SetString("SemesterId", "");
                return RedirectToAction(nameof(Index));
            }
            catch (DbUpdateConcurrencyException)
            {
                return NotFound();
            }

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

            var sbj = await _context.Subjects.Where(c => c.SubjectId == subjectid).Include(a => a.ProgrammesLink).AsSplitQuery().FirstOrDefaultAsync();

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
        public async Task<IActionResult> EditSubjectPost([Bind("SubjectId,SemesterId,SubjectCode,Name,EHours,GyHours,LHours,CorrespondHours,EducationType")] Subjects subjects, List<int> Programmes)
        {
            if (ModelState.IsValid && Programmes.Count() > 0)
            {
                List<ProgrammeDetails> prgDetails = new List<ProgrammeDetails>();
                for (int i = 0; i < Programmes.Count(); i++)//Leelenőrizni, hogy van-e ilyen a mintatantervbe
                {
                    int id = Programmes[i];
                    var prSubject = await _context.ProgrammeDetails.Where(c => c.ProgrammeId == Programmes[i] && c.Name == subjects.Name && c.SubjectCode == subjects.SubjectCode).FirstOrDefaultAsync();//Megkeresi a tantrágyat
                    if (prSubject == null)//Ha nincs, akkor hibával visszatér
                    {
                        var prog = await _context.Programmes.Where(c => c.ProgrammeId == Programmes[i]).FirstOrDefaultAsync();
                        string responseText = "A " + prog.Name + " " + prog.Training + " mintatantervben nem szerepel a megadott tárgy ilyen tárgynévvel vagy kóddal.";
                        return Json(new { isvalid = false, responseText });
                    }
                    else
                    {// Ha van, akkor hozzáadja a listához, később kelleni fog
                        prgDetails.Add(prSubject);
                    }
                }

                var sbj_prgs = await _context.SubjectProgrammes.Where(c => c.SubjectId == subjects.SubjectId).ToListAsync(); //Régi kapcsolótábla törlése
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
                        Obligatory = prgDetails[i].Obligatory
                    };

                    subjectProgrammes.Add(subjectProgramme);//Listába 
                }
                subjects.ProgrammesLink = subjectProgrammes;

                try
                {
                    _context.Subjects.Update(subjects);
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
            var crs = await _context.Courses.Where(c => c.CourseId == courseid).Include(a => a.TeachersLink).AsSplitQuery().FirstOrDefaultAsync();
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
        public async Task<IActionResult> EditCoursePost([Bind("CourseId,SubjectId,NeptunOk,CourseType,CourseCode,Members,Classroom,Software,Comment")] Courses course, int DeleteComments, List<int> Teachers, List<int> LoadList)
        {
            if (ModelState.IsValid && Teachers.Count() > 0 && Teachers.Count() == LoadList.Count())
            {
                if (DeleteComments == 1)
                {
                    course.Comment = null;
                }
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
                        throw;
                    }
                }
                return Json(new { isvalid = true, responseText = "Jó adatok." });
            }
            return Json(new { isvalid = false, responseText = "Rossz adatok." });

        }
        [Authorize(Roles = "Admin")]
        public IActionResult DeleteSubject(int id)
        {
            return PartialView("_SubjectDeleteModalPartial", id);
        }

        // POST: Home/SubjectDeleteDelete/5
        [Authorize(Roles = "Admin")]
        [Route("Home/SubjectDelete/{id?}")]
        public async Task<IActionResult> DeleteSubjectPost(int id)
        {
            var currentSubject = await _context.Subjects.Where(c => c.SubjectId == id).FirstAsync();
            var currentCourses = _context.Courses.Where(c => c.SubjectId == id).ToList();
            List<List<CoursesTeachers>> currentCoursesTeachers = new List<List<CoursesTeachers>>();
            foreach (var course in currentCourses)
            {
                currentCoursesTeachers.Add(_context.CoursesTeachers.Where(c => c.CourseId == course.CourseId).ToList());
            }
            var currentSubjectProgrammes = await _context.SubjectProgrammes.Where(c => c.SubjectId == id).ToListAsync();
            try
            {
                _context.Subjects.Remove(currentSubject);
                var success = await _context.SaveChangesAsync();
                if (success > 0)
                {
                    return Json(new { isvalid = true });
                }
                else
                {

                    return Json(new { isvalid = false, responseText="Hiba történt a szemeszter törlése közben." });
                }
            }
            catch (DbUpdateConcurrencyException)
            {
                return NotFound();
            }
        }
        private bool SubjectsExists(int id)
        {
            return _context.Subjects.Any(e => e.SubjectId == id);
        }
        [Authorize(Roles = "Admin")]
        public IActionResult DeleteCourse(int id)
        {
            return PartialView("_CourseDeleteModalPartial", id);
        }

        // POST: Home/CourseDelete/5
        [Authorize(Roles = "Admin")]
        [Route("Home/CourseDelete/{id?}")]
        public async Task<IActionResult> DeleteCoursePost(int id)
        {
            var currentCourses = _context.Courses.Where(c => c.CourseId == id).First();
            var currentCoursesTeachers = _context.CoursesTeachers.Where(c => c.CourseId == id).ToList();

            try
            {
                _context.Courses.Remove(currentCourses);
                var success = await _context.SaveChangesAsync();
                if (success > 0)
                {
                    return Json(new { isvalid = true });
                }
                else
                {

                    return Json(new { isvalid = false, responseText = "Hiba történt a kurzus törlése közben." });
                }
            }
            catch (DbUpdateConcurrencyException)
            {
                return NotFound();
            }

        }
        [Authorize(Roles = "Admin")]
        public IActionResult DeleteSemester(int id)
        {
            return PartialView("_SemesterDeleteModalPartial", id);
        }

        // DELETE Semester
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> DeleteSemesterPost(int id)
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
            try
            {
                _context.Semester.Remove(currentSemester);
                var success = await _context.SaveChangesAsync();
                HttpContext.Session.SetString("SemesterId", "");
                if (success > 0)
                {
                    return RedirectToAction(nameof(Index));

                }
                else
                {
                    TempData["ErrorMessage"] = "Probléma lépett fel a szemeszter törlése közben!";
                    int currentSemesterId = Convert.ToInt32(HttpContext.Session.GetString("SemesterId"));
                    string training = HttpContext.Session.GetString("Training");
                    return RedirectToAction(nameof(Index), new { currentSemesterId, training });
                }
            }
            catch (DbUpdateConcurrencyException)
            {
                return NotFound();
            }

        }

        [Authorize]
        public IActionResult AnySearch(string anysearch)
        {
            int currentSemesterId = Convert.ToInt32(HttpContext.Session.GetString("SemesterId"));
            string training = HttpContext.Session.GetString("Training");
            return RedirectToAction(nameof(Index), new { currentSemesterId, training, anysearch });
        }


        [Authorize]
        public IActionResult AddComment(int id)
        {
            return PartialView("_AddCommentModalPartial", id);
        }

        [Authorize]
        [HttpPost]
        public async Task<IActionResult> AddCommentPost(int courseId, string comment)
        {
            if (!string.IsNullOrEmpty(comment))
            {
                var currentCourse = await _context.Courses.Where(b => b.CourseId == courseId).FirstOrDefaultAsync();
                string currentComment = currentCourse.Comment;
                string newComment;
                if (currentComment != null)
                {
                    newComment = $"[[${User.Identity.Name}$]]{currentComment};ß {comment}";
                }
                else
                {
                    newComment = $"[[${User.Identity.Name}$]]{comment}";
                }
                currentCourse.Comment = newComment;

                try
                {
                    _context.Courses.Update(currentCourse);
                    var success = await _context.SaveChangesAsync();
                    if (success > 0)
                    {
                        return Json(new { isvalid = true });
                    }
                    else
                    {
                        return Json(new { isvalid = false, responseText="Hiba történt a komment hozzáadása közben." });
                    }
                }
                catch (DbUpdateConcurrencyException)
                {
                    return NotFound();
                }
            }
            else
            {
                return Json(new { isvalid = false, responseText="Üres kommentet nem lehet adni!" });
            }
        }
    }
}
