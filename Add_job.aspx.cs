using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Add_job : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection conn;
    SqlDataReader dr;
    static string email;
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (Session["UN"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        email = Session["UN"].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
            conn.Open();
            cmd = new SqlCommand("insert into jobpost (j_title,j_discription,work_ex,annual,vacancies,location,industry,functional_area,job_role,company_name,qualification,Canidate_profile,month_ex,max_salary,email_id,post_time,hr_name)values('" + TextBox1.Text + "','" + TextBox2.Text + "'," + DropDownList1.SelectedValue + "," + DropDownList3.SelectedValue + "," + TextBox3.Text + ",'" + TextBox4.Text + "','" + DropDownList5.SelectedValue + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "'," + DropDownList2.SelectedValue + "," + DropDownList4.SelectedValue + ",'" + email + "',CONVERT(date,GETDATE()),'"+TextBox10.Text+"')", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
    }
}