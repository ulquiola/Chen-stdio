using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelloWorld
{
    public partial class HelloWorld : System.Web.UI.Page
    {
         string operation = "";
        double value = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Context.Response.ContentType="";
            string txt1 = "HelloWorld";
            result.Text = txt1;
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            Button a = (Button)sender;
            result.Text = result.Text + a.Text;
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            switch (operation)
            {
                case "+":
                    result.Text = Convert.ToString(value + double.Parse(result.Text));
                    break;
                case "-":
                    result.Text = Convert.ToString(value - double.Parse(result.Text));
                    break;
                default:
                    break;
            }
        }

        protected void opration_Click(object sender, EventArgs e)
        {
            value = double.Parse(result.Text);
            Button a = (Button)sender;
            operation = a.Text;
            result.Text="";
        }
    }
}