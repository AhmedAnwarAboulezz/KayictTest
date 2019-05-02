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
        public ActionResult ActivateUsers()
        {
            var usersnotactivate = db.Profiles.Where(c => c.AspNetUser.Status == 0 || c.AspNetUser.Status == null).ToList();
            return View();
        }
        public ActionResult EnableActive(string userid)
        {

            if (userid != "")
            {
                var userdefault = db.AspNetUsers.Where(c => c.Id == userid).FirstOrDefault();
                userdefault.Status = 1;
                db.Entry(userdefault).State = EntityState.Modified;
                db.SaveChanges();

                return Json(new { message = "Activate done Successfully" });
            }
            return Json(new { message = "Something went wrong" });
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
