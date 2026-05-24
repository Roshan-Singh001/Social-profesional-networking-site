using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Manage_Company : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;
    static string email;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        if (Page.IsPostBack == false)
        {
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(" select*from login_user A inner join company_profile B on A.email_id=B.email_id inner join company_reg C   on A.email_id=C.c_email_Id ", conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            conn.Close();
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "block")
        {
            int rowindex = Convert.ToInt32(e.CommandArgument.ToString());
            GridViewRow row = GridView1.Rows[rowindex];
            email=(row.FindControl("HiddenField1")as HiddenField).Value;
            conn.Open();
            cmd = new SqlCommand("update login_user set status='disactive' where email_id='" + email + "'", conn);
            int x = cmd.ExecuteNonQuery();
            conn.Close();
        }
        else if (e.CommandName == "unblock")
        {
            conn.Open();
            cmd = new SqlCommand("update login_user set status='Active' where email_id='" + email + "'", conn);
            int x = cmd.ExecuteNonQuery();
            conn.Close();
        }
            
    }
}