using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using LastTask.Models;

namespace LastTask.Controllers
{
    [Authorize(Roles = "AdminRole")]
    public class ProfilesController : Controller
    {
        private LastTaskEntities db = new LastTaskEntities();

        // GET: Profiles
        public ActionResult Index()
        {
            var profiles = db.Profiles.Include(p => p.AspNetUser);
            return View(profiles.ToList());
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
