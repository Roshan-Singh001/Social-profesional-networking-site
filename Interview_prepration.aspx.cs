using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Interview_prepration : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;
   static  string Question_type;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        conn.Open();
        SqlDataAdapter da = new SqlDataAdapter("select*from interview_question where question_type='" + Question_type + "'", conn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        conn.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        conn.Open();
        cmd = new SqlCommand("select*from interview_question where question_type='Technical Interview Question'",conn);
        dr=cmd.ExecuteReader();
        if (dr.Read())
        {
            Question_type = dr["question_type"].ToString();
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        conn.Open();
        cmd = new SqlCommand("select*from interview_question where question_type='programing skills Question'", conn);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Question_type = dr["question_type"].ToString();
        }
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        conn.Open();
        cmd = new SqlCommand("select*from interview_question where question_type='General knowledge Question'", conn);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Question_type = dr["question_type"].ToString();
        }
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        conn.Open();
        cmd = new SqlCommand("select*from interview_question where question_type='HR Interview Question'", conn);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Question_type = dr["question_type"].ToString();
        }
    }
}