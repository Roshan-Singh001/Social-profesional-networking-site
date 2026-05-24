using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class INTERVIEW : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection conn;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Open();
        cmd = new SqlCommand("insert into interview_question(question,question_type,answer )values('"+TextBox1.Text+"','"+DropDownList1.SelectedValue+"','"+TextBox2.Text+"')",conn);
        int x=cmd.ExecuteNonQuery();
        if (x > 0)
        {
            Label2.Text = "Question add successfully";
        }
        
    }
}