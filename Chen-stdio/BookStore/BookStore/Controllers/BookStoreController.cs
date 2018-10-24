using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BookStore.Controllers
{
    public class BookStoreController : Controller
    {
        Models.bookMVCEntities db = new Models.bookMVCEntities();        
        // GET: BookStore
        public ActionResult Index()
        {
            var data = db.Books;
            return View(data);
        }
    }
}