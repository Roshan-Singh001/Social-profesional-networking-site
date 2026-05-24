using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class changepassword : System.Web.UI.Page
{
    SqlConnection conn;
    SqlDataReader dr;
    SqlCommand cmd;
    string mail;
   static string pass;
   protected void Page_PreInit(object sender, EventArgs e)
   {
       if (Request.QueryString["UT"] == "Admin")
           this.MasterPageFile = "adm.master";
       else if (Request.QueryString["UT"] == "company")
           this.MasterPageFile = "comany.master";
       else
           this.MasterPageFile = "clients.master";

   }
    protected void Page_Load(object sender, EventArgs e)
    {
        mail=Session["UN"].ToString();
        b1.Visible = true;
        b2.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        b1.Visible = false;
        if (Session["UN"] != null)
        {
            conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
            conn.Open();
            cmd = new SqlCommand("select*from login_user where password='" + TextBox2.Text + "'", conn);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label1.Text =mail;
                pass =TextBox2.Text;
                b2.Visible = true;
                
            }
            else
            {
                Label1.Text = "Password is incorrect";
                
                TextBox2.Focus();
                b1.Visible = true;
            }
        }
    }


    protected void Button4_Click1(object sender, EventArgs e)
    {
        if (pass!= TextBox3.Text)
        {
            conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
            conn.Open();
            cmd = new SqlCommand("update  login_user set password='" + TextBox3.Text + "' where email_Id='" + mail + "'", conn);
            int x = cmd.ExecuteNonQuery();
            if (x > 0)
            {
                Label1.Text = "YOUR PASSWORD UPDATED SUCCESSFUL";
                TextBox3.Text = "";
                Response.Redirect("Default.aspx");

            }
        }
        else
        {
            Label1.Text = "Enter the diffrent password it  is same as privous password";
            b1.Visible = false;
            b2.Visible = true;
        }
    }
}