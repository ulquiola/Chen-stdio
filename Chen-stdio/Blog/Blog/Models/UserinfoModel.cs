using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations;

namespace Blog.Models
{
    public class Userinfo
    {
        [Key]
        public int Userid { get; set; }
        public string Username { get; set; }
        public string Userpassword { get; set; }
        public int Usertype { get; set; }
    }
    public class UserinfoDb:DbContext
    {
        public DbSet<Userinfo> Userinfos { get; set; }
    }
}