using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practice
{
    public partial class Cookie : System.Web.UI.Page
    {       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{

        //}

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Cookies["Name"].Value = Name.Text;
            Response.Cookies["Email"].Value = Email.Text;
            Response.Cookies["PhoneNumber"].Value = PhoneNumber.Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //string name = Response.Cookies["Name"].Value;
            //string email = Response.Cookies["Email"].Value;
            //string phoneNumber = Response.Cookies["PhoneNumber"].Value;
            Name.Text = Request.Cookies["Name"].Value;
            Email.Text = Request.Cookies["Email"].Value;
            PhoneNumber.Text = Request.Cookies["PhoneNumber"].Value;
        }
        protected void Button3_Click1(object sender, EventArgs e)
        {
            Name.Text = "";
            Email.Text = "";
            PhoneNumber.Text= "";
        }
    }
}