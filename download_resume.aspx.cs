using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class download_resume : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;
    static string email;
    static string job_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        email = Session["UN"].ToString();
        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        
       if (Page.IsPostBack == false)
        {
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter("select*from apply_job where jobP_id='"+job_id+"'", conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            conn.Close();
        }
       
        if (Page.IsPostBack == false)
        {
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter("select*from jobpost inner join company_profile on jobpost.email_id=company_profile.email_id where jobpost.email_id='"+email+"'", conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            //            DataSet ds =;
            GridView2.DataSource = ds;
            GridView2.DataBind();
            conn.Close();
        }
        
       
    }
   
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "canidate")
        {
            int rowindex = Convert.ToInt32(e.CommandArgument.ToString());
            GridViewRow row = GridView2.Rows[rowindex];
            job_id = (row.FindControl("HiddenField1") as HiddenField).Value;
            grid.Visible = true;
        }
        if (e.CommandName == "view")
        {
            grid.Visible = false;
        }
    }
}