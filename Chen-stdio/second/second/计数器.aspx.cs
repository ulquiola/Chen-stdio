using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace second
{
    public partial class 计数器 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ViewState ["counter"]=0;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int counter =Convert.ToInt32( ViewState["counter"]);
            counter++;
            ViewState["counter"] = counter;
            cishu.Text = counter.ToString();
            //Response.Write(cishu.Text);

        }
    }
}