using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Practices
{
    public partial class DeleteEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strCon = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from Employees";
            SqlDataReader MajorReader = null;
                if (con.State == ConnectionState.Closed)
                    con.Open();
                MajorReader = cmd.ExecuteReader();
                DropDownList1.DataSource = MajorReader;
                DropDownList1.DataTextField = "EmpName";
                DropDownList1.DataValueField = "EmpID";
                DropDownList1.DataBind(); 
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strCon = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "delete from Employees where EmpID=";
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}