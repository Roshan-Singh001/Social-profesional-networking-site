using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Company_regstration : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection conn;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        c1.Visible = true;
        c2.Visible = false;
        Label2.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        c1.Visible = false;
        c2.Visible = true;
        Label2.Visible = true;
        Label2.Text = "In this section fill information about your company";
    }
  protected void Button3_Click(object sender, EventArgs e)
{
     conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        conn.Open();
        cmd = new SqlCommand("insert into company_reg(c_name,c_email_Id,password,c_address,c_website,c_start,c_title,reg_time)values('" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox8.Text + "',GETDATE())", conn);
        int x = cmd.ExecuteNonQuery();
         if (x > 0)
      {
          cmd = new SqlCommand("insert into login_user (email_Id,password,user_type,status)values('" + TextBox3.Text + "','" + TextBox4.Text + "','company','Active')", conn);
           cmd.ExecuteNonQuery();
           cmd = new SqlCommand("insert into company_profile(email_id,profile_pic)values('" + TextBox3.Text + "','d.png')", conn);
           cmd.ExecuteNonQuery();
          Label1.Text = "Registration is succfull";
          TextBox2.Text = "";
          TextBox3.Text = "";
          TextBox4.Text = "";
          TextBox5.Text = "";
          TextBox6.Text = "";
          TextBox7.Text = "";
          DropDownList1.SelectedValue = "";
          TextBox8.Text = "";
          TextBox2.Focus();
          c2.Visible = false;
          Response.Redirect("home.aspx");
      }
}
}