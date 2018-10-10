using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                Label1.Text = Session["UserName"].ToString();
            }
            if (!IsPostBack)
            {
                string sqlstr = "select * from Book order by price";
                DataTable dt = DBhelper.GetFillData(sqlstr);
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
        }
    }
}