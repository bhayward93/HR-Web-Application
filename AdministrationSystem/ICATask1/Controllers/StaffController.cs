using HebbraCoModel;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace AdministrationSystem.Controllers

{
    //vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
    // Make 404 page display for invalid actions httpnotfound(), get dropdown in Staff/Create
    //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^



    public class StaffController : Controller
    {
        HebbraCoModel.ModelHebbraCo db = new HebbraCoModel.ModelHebbraCo();
        
        //
        // GET: /Staff/
        public ActionResult Index(int? BusinessUnitId)
        {
            //var s = db.Staffs.Where(Staff => Staff.Active == true );     
            IQueryable<Staff> q = db.Staffs.Where(Staff => Staff.Active == true);

            IQueryable<Staff> result;
            if (BusinessUnitId != null)
            {
                result = q.Where(w => w.businessUnitId == BusinessUnitId);
            }
            else
            {
                 result = q;
            }

            List<BusinessUnit> businessUnits = db.BusinessUnits.ToList();        

            ViewBag.BusinessUnitId = new SelectList(businessUnits, "BusinessUnitId", "Title");
            return View(result);
        }

        //public ActionResult StaffView(int id  = 0)
        //{
        //    var s = db.Staffs.Where(Staff => Staff.Active == true);
        //    BusinessUnit bu = new BusinessUnit.Find(id);
        //    if (bu == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    var staff = db.Staffs.Where(b => businessUnitId == id);
        //    return View(staff);
        //}            
        

        //
        // GET: /Staff/Details/5
        public ActionResult Details(int id)
        {
            Staff s = db.Staffs.Find(id); 
            if (s == null)
            {
              return RedirectToAction("HandleError", new { message = "Page does not exist" });
            }
            return View(s);
        }

        //
        // GET: /Staff/Create
        public ActionResult Create()
        {
          // ViewBag.BusinessUnitId = new SelectList(s.All, "BusinessId", "Title");
            return View();
        }

        //
        // POST: /Staff/Create
        [HttpPost]
        public ActionResult Create(Staff s)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    s.Active = true;
                    db.Staffs.Add(s);
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }


                return RedirectToAction("Create");
            }
            catch
            {
                return View(s);
            }
        }

        //
        // GET: /Staff/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Staff s = db.Staffs.Find(id);
            if (s == null)
            {
                return RedirectToAction("HandleError", new { message = "Page does not exist" });
            }
            return View(s);
        }

        //
        // POST: /Staff/Edit/5
        [HttpPost]
        public ActionResult Edit(Staff s)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    db.Entry(s).State = EntityState.Modified;
                    s.Active = true;
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }
                return View(s);
            }
            catch
            {
                return RedirectToAction("Index");
            }
        }

        //
        // GET: /Staff/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("HandleError", new { message = "Page does not exist" });
                //return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Staff s = db.Staffs.Find(id);

            if (s == null)
            {
                return RedirectToAction("HandleError", new { message = "Page does not exist" });
            }
            return View(s);
        }

        //
        // POST: /Staff/Delete/5
        [HttpPost]
        public ActionResult Delete(int id)
        {
          Staff s = db.Staffs.Find(id);
            try
            {

                s.Active = false;
                db.Entry(s).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View(s);
            }
        }
    }
}
