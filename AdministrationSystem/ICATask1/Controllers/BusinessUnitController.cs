using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using HebbraCoModel; 

namespace AdministrationSystem.Controllers
{
    public class BusinessUnitController : Controller
    {
        HebbraCoModel.ModelHebbraCo db = new HebbraCoModel.ModelHebbraCo();
        // GET: BusinessUnit
        public ActionResult Index()
        {           
            var bu = db.BusinessUnits.Where(BusinessUnit => BusinessUnit.Active == true);
            //ViewBag.BusinessUnitId = new SelectList(bu.All());
         
            return View(bu);
            //Only show active businesses .where b.active = 1
        }

        // GET: BusinessUnit/Details/5
        public ActionResult Details(int id = 0)
        {
            BusinessUnit bu = db.BusinessUnits.Find(id);
            if (bu == null)
            {
                return RedirectToAction("HandleError", new {message = "Page does not exist"});
                //throw new HttpException(404, "Your error message");
            }
            return View(bu);
        }


        private ActionResult HandleError(string message)
        {
            ViewBag.Message = message;
            return View("Oops");
        }

        public ActionResult StaffView(int id = 0)
        {
            BusinessUnit bu = db.BusinessUnits.Find(id);
            IQueryable<Staff> q = db.Staffs.Where(Staff => Staff.businessUnitId == id);
            if (bu == null)
            {
                return RedirectToAction("HandleError", new { message = "Page does not exist" });
            }
            return View(q);
        }

        // GET: BusinessUnit/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: BusinessUnit/Create
        [HttpPost]
        public ActionResult Create(BusinessUnit bu)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    bu.Active = true;
                    db.BusinessUnits.Add(bu);
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }


                return RedirectToAction("Create");
            }
            catch
            {
                return View(bu);
            }
        }


      
        // GET: BusinessUnit/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                //return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
                return RedirectToAction("HandleError", new { message = "Page does not exist" });
            }
            BusinessUnit bu = db.BusinessUnits.Find(id);
            if (bu == null)
            {
                return RedirectToAction("HandleError", new { message = "Page does not exist" });
            }
            return View(bu);
        }

        // POST: BusinessUnit/Edit/5
        [HttpPost]
        public ActionResult Edit(BusinessUnit bu)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    db.Entry(bu).State = EntityState.Modified;
                    bu.Active = true;
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }
                return View(bu);
            }
            catch
            {
                return RedirectToAction("Index");
            }
        }

        // GET: BusinessUnit/Delete/5

       

            public ActionResult Delete(int? id)
            {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BusinessUnit bu = db.BusinessUnits.Find(id);

            if (bu == null)
            {
                return RedirectToAction("HandleError", new { message = "Page does not exist" });
            }
            return View(bu);

        }



        // POST: BusinessUnit/Delete/5
        [HttpPost]
        public ActionResult Delete(int id)
        {
            BusinessUnit bu = db.BusinessUnits.Find(id);
            try
            {
                
                bu.Active = false;
                db.Entry(bu).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View(bu);
            }

           
            
        }
    }
}
