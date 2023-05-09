using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication2.Models;
using System.Web.Security;

namespace WebApplication2.Controllers
{
    public class HomeController : Controller
    {
        WDFEntities db = new WDFEntities();

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult Goods()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult Delivery()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }


        public ActionResult Order()
        {
            ViewBag.Message = "Your contact page.";

            return View(db.Product.ToList());
        }
    }
}