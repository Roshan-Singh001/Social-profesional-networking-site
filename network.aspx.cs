using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class network : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;
    static string email;
    static string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        email = Session["UN"].ToString();
        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        if (Page.IsPostBack == false)
        {
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(" select*from friend inner join profile on friend.friend_email=profile.Email_id where send_email='" + email + "'", conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            Repeater2.DataSource = ds;
            Repeater2.DataBind();
            conn.Close();
            
        }
       if (Session["UN"].ToString()==email)
        {
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter("select *from profile a inner join message b on a.Email_id=b.email_id where a.email_id='"+id+"'", conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
            conn.Close();
        }
             
       /* else if (Session["UN"].ToString() == "+email+")
        {
            string em = "Kamalrastogi865@gmail.com";
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter("select *from profile a inner join message b on a.Email_id=b.email_id where a.email_id='"+id+"'", conn);
               DataSet ds = new DataSet();
              
               da.Fill(ds);
               Repeater1.DataSource = ds;
               Repeater1.DataBind();
               
            conn.Close();
        }*/
       
    }
   
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        conn.Open();
        cmd = new SqlCommand("insert into message(email_id,chat)values('" + email + "','" + mes.Text + "')",conn);
        cmd.ExecuteNonQuery();
     
    }
    private DataSet GetData()
    {
        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        conn.Open();
        SqlDataAdapter da = new SqlDataAdapter("select *from profile a inner join message b on a.Email_id=b.email_id where a.email_id='" + email + "'", conn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      
        RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
        id = (item.FindControl("Button1") as Button).Text;
        //Session["vn"] = id;
    }
}