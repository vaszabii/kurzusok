﻿using Kurzusok.Data;
using Microsoft.AspNetCore.Mvc;
using System;
using Kurzusok.Models;
using Kurzusok.ViewModels;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.EntityFrameworkCore;
using HtmlAgilityPack;
using System.Text;
using Microsoft.AspNetCore.Http;

namespace Kurzusok.Controllers
{
    [Authorize(Roles = "Admin")]
    public class SyllabusController : Controller
    {
        private readonly KurzusokContext _context;
#pragma warning disable IDE0044 // Add readonly modifier
        private SyllabusViewModel _syllabusViewModel;
#pragma warning restore IDE0044 // Add readonly modifier

        public SyllabusController(KurzusokContext context)
        {
            _syllabusViewModel = new SyllabusViewModel();
            _context = context;
        }
        public IActionResult Index()
        {
            string SessionSyllabusId = HttpContext.Session.GetString("SyllabusId");

            int currentSyllabusId;
            if (!string.IsNullOrEmpty(SessionSyllabusId))
            {
                currentSyllabusId = Convert.ToInt32(SessionSyllabusId);
            }
            else
            {
                var semesters = _context.Semester.ToListAsync();
                currentSyllabusId = semesters.Result.Last().Id;
                HttpContext.Session.SetString("SyllabusId", Convert.ToString(currentSyllabusId));
            }
            return RedirectToAction(nameof(Index), new { currentSyllabusId });
        }
        [Route("Syllabus/{currentSyllabusId}")]
        public async Task<IActionResult> Index(int currentSyllabusId)
        {
            if (TempData.ContainsKey("ErrorMessage"))
            {
                ModelState.AddModelError("ReadError", TempData["ErrorMessage"].ToString());
                TempData.Remove("ErrorMessage");
            }
            _syllabusViewModel.SyllabusList = await _context.Programmes.ToListAsync();
            if (_syllabusViewModel.SyllabusList.Count()>0)
            {
                int lastId = _syllabusViewModel.SyllabusList.Last().ProgrammeId;
                Programmes CurrentSyllabus;
                CurrentSyllabus = await _context.Programmes.Where(c => c.ProgrammeId == currentSyllabusId).Include(b => b.ProgrammeDetails).FirstOrDefaultAsync();
                if (CurrentSyllabus == null) //Ha nincs a megadott ID-s mintatanterv akkor az utolsót kérdezzük le
                {
                    CurrentSyllabus = await _context.Programmes.Where(c => c.ProgrammeId == lastId).Include(b => b.ProgrammeDetails).FirstOrDefaultAsync();
                    HttpContext.Session.SetString("SyllabusId", Convert.ToString(lastId));
                }
                else
                {
                    HttpContext.Session.SetString("SyllabusId", Convert.ToString(currentSyllabusId));
                }
                _syllabusViewModel.CurrentSyllabus = CurrentSyllabus;
            }
            else
            {
                _syllabusViewModel.CurrentSyllabus = new Programmes();
            }
            return View(_syllabusViewModel);
        }
        // GET: Create syllabus 
        [HttpGet]
        public IActionResult CreateSyllabus()
        {
            Programmes prg = new Programmes();
            return PartialView("_CreateSyllabus", prg);
        }
        //POST: Create syllabus
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> CreateSyllabusPost([Bind("Id,Name,Training")] Programmes programme)
        {
            if (ModelState.IsValid)
            {
                var isPrg = await _context.Programmes.Where(c => c.Name == programme.Name).FirstOrDefaultAsync();
                if (isPrg == null)//Ha nincsen még az adatbázisban akkor felvesszük
                {
                    _context.Add(programme);
                    await _context.SaveChangesAsync();
                    string programmeId = Convert.ToString(programme.ProgrammeId);
                    return Json(new { isvalid = true, createdsyllabus = true, programmeid = programmeId });
                }
                else //Ha van az db-ben, akkor hibaüzenettel visszatérünk
                {
                    string responseText = "Már van ilyen nevű mintatanterv";
                    return Json(new { isvalid = false, responseText });
                }

            }
            return Json(new { isvalid = false });
        }

        // GET: Create syllabus subject
        [HttpGet]
        public IActionResult CreateSubjectToSyllabus(int id)
        {
            ProgrammeDetails prDetails = new ProgrammeDetails
            {
                ProgrammeId = id
            };

            return PartialView("_CreateSubjectToSyllabus", prDetails);
        }

        // POST:  Create syllabus subject
        [HttpPost]

        [ValidateAntiForgeryToken]
        public async Task<IActionResult> CreateSubjectToSyllabusPost([Bind("Id,ProgrammeId,SubjectCode,Name,EHours,GyHours,LabHours,CorrespondHours,EducationType,Credit,RecommendedSemester,Obligatory")] ProgrammeDetails prDetails)
        {
            if (ModelState.IsValid)
            {
                var prSubject = await _context.ProgrammeDetails.Where(c => c.ProgrammeId == prDetails.ProgrammeId && (c.Name == prDetails.Name || c.SubjectCode == prDetails.SubjectCode)).FirstOrDefaultAsync();
                if (prSubject == null)//Ha nincsen már az adatbázisban akkor felvesszük
                {
                    _context.Add(prDetails);
                    await _context.SaveChangesAsync();
                    string programmeId = Convert.ToString(prDetails.ProgrammeId);
                    return Json(new { isvalid = true, programmeid = programmeId });
                }
                else //Ha van az db-ben, akkor hibaüzenettel visszatérünk
                {
                    string responseText = "Ebben a mintatantervben már létezik ilyen tantárgy vagy tantárgynév";
                    return Json(new { isvalid = false, responseText });
                }

            }
            return Json(new { isvalid = false });
        }
        // GET: Edit syllabus
        [HttpGet]
        public async Task<IActionResult> EditSubjectSyllabus(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            var programmeDetails = await _context.ProgrammeDetails.Where(c => c.Id == (int)id).FirstOrDefaultAsync();
            if (programmeDetails == null)
            {
                return NotFound();
            }
            return PartialView("_EditSubjectToSyllabus", programmeDetails);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> EditSubjectPost([Bind("Id,ProgrammeId,SubjectCode,Name,EHours,GyHours,LabHours,CorrespondHours,EducationType,Credit,RecommendedSemester,Obligatory")] ProgrammeDetails prDetails)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    _context.ProgrammeDetails.Update(prDetails);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    return NotFound();
                }
                return Json(new { isvalid = true, responseText = "Jó adatok." });
            }
            return Json(new { isvalid = false, responseText = "Rossz adatok." });

        }

        public IActionResult DeleteSubjectSyllabus(int id)
        {
            return PartialView("_DeleteSubjectToSyllabus", id);
        }

        // Post: Delete one subject from programmedetails
        [Route("Syllabus/DeleteSubjectSyllabusPost/{id?}")]
        public async Task<IActionResult> DeleteSubjectSyllabusPost(int id)
        {
            var programmeDetail = await _context.ProgrammeDetails.Where(c => c.Id == id).FirstAsync();
            try
            {
                _context.ProgrammeDetails.Remove(programmeDetail);
                var success = await _context.SaveChangesAsync();
                if (success > 0)
                {
                    return Json(new { isvalid = true });
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

        public IActionResult DeleteSyllabus(int id)
        {
            return PartialView("_DeleteSyllabus", id);
        }


        public async Task<IActionResult> DeleteSyllabusPost(int id)
        {
            //Ez még így nem jó kéne egy ellenőrzés
            var subjectlist = await _context.Semester.Include(a => a.Subjects).ThenInclude(c => c.ProgrammesLink).Where(i => i.Subjects.Any(o =>o.ProgrammesLink.Any(p=>p.ProgrammeId==id))).ToListAsync();
            if (subjectlist.Count() > 0)
            {
                string response = "Nem lehet törölni mert a következő szemeszterek használják ezt a mintatantervet: ";
                foreach (var item in subjectlist)
                {
                    response = response + item.Date + "; ";
                }
                return Json(new { isvalid = false, responseText = response });

            }
            var programme = await _context.Programmes.Where(c => c.ProgrammeId == id).Include(d => d.ProgrammeDetails).FirstAsync();
            try
            {
                _context.Programmes.Remove(programme);
                int success = await _context.SaveChangesAsync();
                if (success > 0)
                {
                    return Json(new { isvalid = true, responseText = "Jó adatok." });
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

        public async Task<IActionResult> ReadFromWeb(int id, string url, string training)
        {
            var web = new HtmlWeb
            {
                OverrideEncoding = Encoding.UTF8
            };
            var doc = web.Load(url);
            var tables = doc.DocumentNode.SelectNodes("//*[@id='gen-content']/table");
            if (tables != null)
            {
                bool delete = true;
                foreach (HtmlNode table in tables)
                {
                    int? code = null; int? name = null; int? gyhour = null; int? ehour = null; int? labhour = null; int? corrhour = null; int? cred = null; int? sem = null;
                    if (table.SelectSingleNode("preceding-sibling::b[1]").InnerText.ToLower().Contains("szakmai") || table.SelectSingleNode("preceding-sibling::b[1]").InnerText.ToLower().Contains("kötelező"))
                    {
                        var head = table.SelectNodes(".//thead/tr/child::*");
                        for (int i = 0; i < head.Count; i++)
                        {
                            if (head[i].HasChildNodes)
                            {
                                if (head[i].SelectSingleNode(".//b").InnerText.ToLower().Contains("kód"))
                                {
                                    code = i + 1;
                                }
                                else if (head[i].SelectSingleNode(".//b").InnerText.ToLower().Contains("nev"))
                                {
                                    name = i + 1;
                                }
                                else if (head[i].SelectSingleNode(".//b").InnerText.ToLower().Contains("elm."))
                                {
                                    if (training == "full")
                                    {
                                        ehour = i + 1;
                                    }
                                    else
                                    {
                                        corrhour = i + 1;
                                    }
                                }
                                else if (head[i].SelectSingleNode(".//b").InnerText.ToLower().Contains("gyak"))
                                {
                                    gyhour = i + 1;
                                }
                                else if (head[i].SelectSingleNode(".//b").InnerText.ToLower().Contains("lab"))
                                {
                                    labhour = i + 1;
                                }
                                else if (head[i].SelectSingleNode(".//b").InnerText.ToLower().Contains("krp"))
                                {
                                    cred = i + 1;
                                }
                                else if (head[i].SelectSingleNode(".//b").InnerText.ToLower().Contains("af"))
                                {
                                    sem = i + 1;
                                }
                            }
                        }
                        //Ha valami rossz a tábla struktúrába
                        if (code == null || name == null || cred == null)
                        {
                            TempData["ErrorMessage"] = "Nem sikerült lekérni a táblázatot az oldalról!";
                            return RedirectToAction("Index");
                        }
                        if (training == "full" && (ehour == null || gyhour == null))
                        {
                            TempData["ErrorMessage"] = "Nem sikerült lekérni a táblázatot az oldalról!";
                            return RedirectToAction("Index");
                        }
                        else if (training == "part" && corrhour == null)
                        {
                            TempData["ErrorMessage"] = "Nem sikerült lekérni a táblázatot az oldalról!";
                            return RedirectToAction("Index");
                        }
                        if (table.SelectSingleNode("preceding-sibling::b[1]").InnerText.ToLower().Contains("kötelező") && sem == null && !table.SelectSingleNode("preceding-sibling::b[1]").InnerText.ToLower().Contains("választ"))
                        {
                            TempData["ErrorMessage"] = "Nem sikerült lekérni a táblázatot az oldalról!";
                            return RedirectToAction("Index");
                        }
                        var node = table.SelectNodes("tr");
                        foreach (HtmlNode row in node)
                        {
                            ProgrammeDetails prDetails;
                            HtmlNode subjectcode = row.SelectSingleNode($"td[{code}]");
                            if (subjectcode.InnerText.Contains("INT"))
                            {
                                HtmlNode subjectname = row.SelectSingleNode($"td[{name}]");
                                HtmlNode credit = row.SelectSingleNode($"td[{cred}]");
                                int? semester = null;
                                bool oblig = false;
                                if (sem != null)
                                {
                                    oblig = true;
                                    semester = int.Parse(row.SelectSingleNode($"td[{sem}]").InnerText);
                                }
                                if (training == "full")
                                {
                                    HtmlNode ehours = row.SelectSingleNode($"td[{ehour}]");
                                    HtmlNode gyhours = row.SelectSingleNode($"td[{gyhour}]");
                                    int? lhours=null;
                                    if (labhour!=null)
                                    {
                                        lhours = int.Parse(row.SelectSingleNode($"td[{labhour}]").InnerText);
                                    }
                                    prDetails = new ProgrammeDetails
                                    {
                                        ProgrammeId = id,
                                        SubjectCode = subjectcode.InnerText,
                                        Name = subjectname.InnerText,
                                        EHours = int.Parse(ehours.InnerText),
                                        GyHours = int.Parse(gyhours.InnerText),
                                        LabHours = lhours,
                                        Obligatory = oblig,
                                        Credit = int.Parse(credit.InnerText),
                                        RecommendedSemester = semester
                                    };
                                }
                                else
                                {
                                    HtmlNode corrhours = row.SelectSingleNode($"td[{corrhour}]");
                                    prDetails = new ProgrammeDetails
                                    {
                                        ProgrammeId = id,
                                        SubjectCode = subjectcode.InnerText,
                                        Name = subjectname.InnerText,
                                        CorrespondHours = int.Parse(corrhours.InnerText),
                                        Obligatory = oblig,
                                        Credit = int.Parse(credit.InnerText),
                                        RecommendedSemester = semester
                                    };
                                }
                                if (delete)
                                {
                                    var deletethisprogramme = await _context.ProgrammeDetails.Where(b => b.ProgrammeId == id).ToListAsync();
                                    _context.ProgrammeDetails.RemoveRange(deletethisprogramme);
                                    delete = false;
                                }
                                _context.ProgrammeDetails.Add(prDetails);
                                await _context.SaveChangesAsync();
                            }
                        }
                    }
                }
            }
            else
            {
                TempData["ErrorMessage"] = "Nem megfelelő weboldal!";
            }
            return RedirectToAction("Index");
        }
    }
}
