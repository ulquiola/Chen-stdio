using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Models;
using Tools;

namespace TradingMall.Controllers
{
    public class AccountController : Controller
    {
        // GET: Account
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Register()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Register(UserInfo Man)
        {
            try
            {
                UserInfoEntities db = new UserInfoEntities();
                var user = db.UserInfoes.Where(a => a.PhoneNumber == Man.PhoneNumber).FirstOrDefault();
                var vcode = Request["verifycode"];//find table of table
                //user validation
                if (user != null)
                {
                    return Content("User is allready exits!");

                }
                else
                {
                    //validatecode 
                    if (vcode == Session["ValidateCode"].ToString())
                    {
                        //UserInfo a = new UserInfo();
                        //a.PhoneNum = Man.PhoneNum;
                        //a.UserName = Man.UserName;
                        //a.Password = Man.Password;
                        db.UserInfoes.Add(Man);
                        db.SaveChanges();
                    }
                    else
                    {
                        return Content("ValidateCode is not true!");
                    }
                    return Content("Successfully!");
                }
            }
            catch (Exception ex)
            {
                return Content(ex.Message);
            }
        }

        //public ActionResult Register(UserInfo Man)
        //{
        //    string sql1 = @"select * from userinfo where PhoneNumber=@phonenumber";
        //    SqlParameter[] phone = new SqlParameter[]
        //        {
        //            new SqlParameter("@phonenumber",SqlDbType.VarChar,50){ Value = Man.PhoneNum }
        //        };
        //     var result1=SqlHelper.ExecuteScalar(sql1, phone);
        //    if(result1!=null)
        //    {
        //        return Content("User is already exist!");

        //    }
        //    else
        //    {
        //        string sql2 = @"insert into userinfo values(@username,@password,@Phonenumber)";
        //        SqlParameter[] pms = new SqlParameter[]
        //        {
        //        new SqlParameter("@username", SqlDbType.VarChar,50){Value=Man.UserName },
        //        new SqlParameter("@password", SqlDbType.VarChar,50){Value=Man.Password },
        //        new SqlParameter("@phonenumber",SqlDbType.VarChar,50){Value=Man.PhoneNum }
        //        };
        //        string verifycode = Request["verifycode"];
        //        if (verifycode == Session["ValidateCode"].ToString())
        //        {
        //            int result = SqlHelper.ExecuteNonQuery(sql2, pms);
        //            if (result != 0)
        //            {
        //                return Content("success");
        //            }
        //            else
        //            {
        //                return Content("failed");
        //            }
        //        }
        //        else
        //        {
        //            return Content("ValidateCode is not true!");
        //        }
        //    }

        //}


        //
        //
        public ActionResult GetValidateCode()
        {
            ValidateCode vCode = new ValidateCode();
            string code = vCode.CreateValidateCode(4);
            Session["ValidateCode"] = code;
            byte[] bytes = vCode.CreateValidateGraphic(code);
            return File(bytes, @"image/jpeg");
        }

    }
}