using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace test1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                string sqlstr = "select * from users where userid=@UserId and password=@Password";
                SqlParameter sp1 = DBhelper.CreateParameter("@UserId", SqlDbType.VarChar, TxtName.Text.Trim());
                SqlParameter sp2 = DBhelper.CreateParameter("@Password", SqlDbType.VarChar, TxtPwd.Text.Trim());
                SqlParameter[] sp = new SqlParameter[2];
                sp[0] = sp1;
                sp[1] = sp2;
                try
                {
                    SqlDataReader dr = DBhelper.GetDataReader(sqlstr, sp);
                    if (dr.Read())
                    {
                        Session["UserName"] = TxtName.Text.Trim();
                        Response.Redirect("~/Default.aspx");
                        //Label1.Text = "登陆成功！";
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "ok", "<script>alert('错误的用户名或密码！')</script>");

                    }
                }
                catch (Exception ex)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "ok", "<script>alert('" + ex.Message + "')</script>");
                }
                //finally
                //{
                //    DBhelper.Dispose();
                //}
            }
        }
    }
}
    