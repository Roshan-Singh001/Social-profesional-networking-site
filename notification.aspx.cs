using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class notification : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
   
    SqlDataReader dr;
    static string noti_Id;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        if (Page.IsPostBack == false)
        {
            //            DataSet ds =;
            Repeater1.DataSource = GetData();
            Repeater1.DataBind();
        }
    }
    private DataSet GetData()
    {
       
        conn.Open();
        SqlDataAdapter da = new SqlDataAdapter("select*from notification a inner join  profile b  on a.email_id=b.Email_id  ", conn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;

    }
   
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "delete")
        {
            int index = e.Item.ItemIndex;
            noti_Id = (Repeater1.Items[index].FindControl("HiddenField1") as HiddenField).Value;
            conn.Open();
            cmd=new SqlCommand("delete  notification where n_id="+noti_Id+"",conn);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}