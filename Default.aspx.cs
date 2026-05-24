using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;
    static string type;
    static string block;
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        conn.Open();
        cmd = new SqlCommand("select*from login_user where email_id='" + TextBox1.Text + "' and password='" + pas2.Text + "'", conn);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            type = dr["user_type"].ToString();
            block = dr["status"].ToString();
            if (block == "Active")
            {
                if (type == "company")
                {
                    Session["UN"] = TextBox1.Text;
                    Response.Redirect("Add_job.aspx");
                    pas2.Text = "";
                }
                else if (type == "user")
                {
                    Session["UN"] = TextBox1.Text;
                    Response.Redirect("home.aspx");
                }
                else
                {
                    Session["UN"] = TextBox1.Text;
                    Response.Redirect("ManageUser.aspx");
                }
            }
            else
            {
                Label1.Text = "you are blocked by admin ";
            }
        }
        else
        {
            Label1.Text = "password is incorrect";
            TextBox1.Text = "";
            pas2.Text = "";

        }
        conn.Close();
    }
}