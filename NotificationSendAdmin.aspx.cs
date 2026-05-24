using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class NotificationSendAdmin : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection conn;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");

        n1.Visible = true;
        n2.Visible = false;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Open();
        cmd = new SqlCommand("insert into notification(message,email_id)values('"+TextBox2.Text+"','"+TextBox1.Text+"')",conn);
        int x=cmd.ExecuteNonQuery();
        if (x > 0)
        {
            Label2.Text = "Notification send succfully";
        }
        conn.Close();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        n1.Visible = false;
        n2.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
    }
}