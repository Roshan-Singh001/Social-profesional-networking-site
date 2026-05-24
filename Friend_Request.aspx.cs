using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Friend_Request : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection conn;
    SqlDataReader dr;
    static string email;
    static string femail;
    static string mes;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UN"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        email = Session["UN"].ToString();
        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        conn.Open();
        if (Page.IsPostBack == false)
        {
            SqlDataAdapter da = new SqlDataAdapter("select *from Registration_user a inner join profile b on a.Email=b.Email_id", conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
        conn.Close();
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "add")
        {
            int index = e.Item.ItemIndex;
            femail = (DataList1.Items[index].FindControl("HiddenField1") as HiddenField).Value;
            conn.Open();
            cmd = new SqlCommand("insert into friend(send_email,friend_email)values('" + email + "','" + femail + "')", conn);
            cmd.ExecuteNonQuery();
            
            cmd = new SqlCommand("select*from Registration_user where Email='" + email + "' ", conn);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                string name = dr["f_name"].ToString();
                string lname = dr["l_name"].ToString();
                dr.Close();
                mes = name + " " + lname + " " + " send you friend request ";
                cmd = new SqlCommand("insert into notification (email_id,message)values('" + femail + "','" + mes + "')", conn);
                cmd.ExecuteNonQuery();
            }
            
            conn.Close();
        }
    }
}
