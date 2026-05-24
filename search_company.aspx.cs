using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class search_company : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection conn;
    SqlDataReader dr;
    string tempemail;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        if (Page.IsPostBack == false)
        {
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter("select*from company_profile inner join company_reg on company_profile.email_id=company_reg.c_email_Id", conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
            conn.Close();
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "view")
        {
            int index = e.Item.ItemIndex;
            tempemail = (DataList1.Items[index].FindControl("HiddenField1") as HiddenField).Value;
            Session["UN"] = tempemail;
            Response.Redirect("company_profile.aspx");
            conn.Open();


        }
    }
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string>
    SearchUser(string prefixText)
    {
        SqlConnection conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        conn.Open();
        SqlDataAdapter da;
        DataTable dt;
        DataTable result = new DataTable();
        string str = "select industry  from company_profile  where industry like '" + prefixText + "%'";
        da = new SqlDataAdapter(str, conn);
        dt = new DataTable();
        da.Fill(dt);
        List<string> Output = new List<string>();
        for (int i = 0; i < dt.Rows.Count; i++)
            Output.Add(dt.Rows[i][0].ToString());
        conn.Close();
        return Output;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlDataAdapter da = new SqlDataAdapter("select*from company_profile inner join company_reg on company_profile.email_id=company_reg.c_email_Id where  industry like '" + TextBox2.Text + "%'", conn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
        conn.Close();
    }
}