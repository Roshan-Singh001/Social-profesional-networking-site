using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
public partial class ForgetePassword : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        t1.Visible = true;

    }

    protected void Button3_Click(object sender, EventArgs e)
    {


        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        conn.Open();
        cmd = new SqlCommand("select*from login_user where email_id='" + TextBox2.Text + "'", conn);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label1.Text = dr["email_id"].ToString();
            t1.Visible = false;
            t2.Visible = true;
           
        }
        else
        {
            Label1.Text = "this email_id not exit in database ";
            TextBox2.Text = "";
            TextBox2.Focus();
            t2.Visible = false;
            
        }
        conn.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        conn.Open();
        cmd=new SqlCommand("UPDATE login_user SET password='"+TextBox3.Text+"' where email_id='"+Label1.Text+"'",conn);
        int x=cmd.ExecuteNonQuery();
        if(x>0)
        {
            Label2.Text = "your passwored changed successfully";
            TextBox3.Text = "";
            TextBox4.Text = "";
            t1.Visible = false;
            t2.Visible = false;
            Response.Redirect("Default2.aspx");
            
        }
        conn.Close();
    }
    
    
}
