using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class ManageUser : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection conn;
    SqlDataReader dr;
    static string member;
    static string email;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
            conn.Open();
            if (Page.IsPostBack == false)
            {
                SqlDataAdapter da = new SqlDataAdapter("select *from Registration_user a inner join profile b on a.Email=b.Email_id", conn);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            conn.Close();
    }
   
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "block")
        {
            int rowindex = Convert.ToInt32(e.CommandArgument.ToString().Trim());
            GridViewRow row = GridView1.Rows[rowindex];
            // member = (row.FindControl("Label2") as Label).Text;
            email = (row.FindControl("HiddenField1") as HiddenField).Value;
            conn.Open();
            cmd = new SqlCommand("update login_user set status='disactive' where email_id='" + email + "'", conn);
            int x = cmd.ExecuteNonQuery();
            conn.Close();

        }
        else if (e.CommandName == "view")
        {
            int rowindex = Convert.ToInt32(e.CommandArgument.ToString().Trim());
            GridViewRow row = GridView1.Rows[rowindex];
            email = (row.FindControl("HiddenField1") as HiddenField).Value;
            Session["UN"] = email;
            Response.Redirect("profile.aspx");
        }
        else if (e.CommandName == "unblock") 
        {
            int rowindex = Convert.ToInt32(e.CommandArgument.ToString().Trim());
            GridViewRow row = GridView1.Rows[rowindex];
            email = (row.FindControl("HiddenField1") as HiddenField).Value;
            conn.Open();
            cmd = new SqlCommand("update login_user set status='Active' where email_id='" + email + "'", conn);
            int x = cmd.ExecuteNonQuery();
            conn.Close();

        }
    }
}