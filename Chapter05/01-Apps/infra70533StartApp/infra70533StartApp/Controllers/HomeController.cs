using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace infra70533StartApp.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Welcome to Exam Guide 70-533 Azure Infrastructure solutions";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Packt Publishing";

            return View();
        }
    }
}