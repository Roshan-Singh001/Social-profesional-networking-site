using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Manage_and_Response : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;
    static string email;
    
    protected void Page_Load(object sender, EventArgs e)
    {
     email=Session["UN"].ToString();   
        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        if (Page.IsPostBack == false)
        {
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter("select*from jobpost where email_id='" + email + "'", conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            conn.Close();
        }
    }
  
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
       
            
            // member = (row.FindControl("Label2") as Label).Text;
            string J_ID;
            J_ID = ((HiddenField)GridView1.Rows[e.RowIndex].FindControl("HiddenField1")).Value;
            conn.Open();
            cmd = new SqlCommand("delete  jobpost where job_id=" + J_ID + "", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
