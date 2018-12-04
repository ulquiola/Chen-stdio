using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Blog.Models;
namespace Blog.Controllers
{
    public class RegisterController : Controller
    {
        // GET: Register
        UserinfoDb db = new UserinfoDb();
        public ActionResult Register()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Register(Userinfo userinfo)
        {
            db.Userinfos.Add(userinfo);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}