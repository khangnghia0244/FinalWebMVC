using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebApplication2.Models;

namespace WebApplication2.Controllers
{
    public class GoodeliverynotesController : Controller
    {
        private WDFEntities db = new WDFEntities();

        // GET: Goodeliverynotes
        public ActionResult Index()
        {
            return View(db.Goodeliverynotes.ToList());
        }

        // GET: Goodeliverynotes/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Goodeliverynote goodeliverynote = db.Goodeliverynotes.Find(id);
            if (goodeliverynote == null)
            {
                return HttpNotFound();
            }
            return View(goodeliverynote);
        }

        // GET: Goodeliverynotes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Goodeliverynotes/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,OrderID,ProductID,Quantity,Delivery,UnitAmount")] Goodeliverynote goodeliverynote)
        {
            if (ModelState.IsValid)
            {
                db.Goodeliverynotes.Add(goodeliverynote);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(goodeliverynote);
        }

        // GET: Goodeliverynotes/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Goodeliverynote goodeliverynote = db.Goodeliverynotes.Find(id);
            if (goodeliverynote == null)
            {
                return HttpNotFound();
            }
            return View(goodeliverynote);
        }

        // POST: Goodeliverynotes/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,OrderID,ProductID,Quantity,Delivery,UnitAmount")] Goodeliverynote goodeliverynote)
        {
            if (ModelState.IsValid)
            {
                db.Entry(goodeliverynote).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(goodeliverynote);
        }

        // GET: Goodeliverynotes/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Goodeliverynote goodeliverynote = db.Goodeliverynotes.Find(id);
            if (goodeliverynote == null)
            {
                return HttpNotFound();
            }
            return View(goodeliverynote);
        }

        // POST: Goodeliverynotes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            Goodeliverynote goodeliverynote = db.Goodeliverynotes.Find(id);
            db.Goodeliverynotes.Remove(goodeliverynote);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
