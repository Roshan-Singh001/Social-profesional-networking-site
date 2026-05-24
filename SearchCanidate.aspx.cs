using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class SearchCanidate : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
       if(Page.IsPostBack == false)
        {
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter("select*from education a inner join addExperience b on a.Email=b.Email inner join profile c on a.Email=c.Email_id inner join Registration_user d on a.Email=d.Email where a.Email='priyanshu101r@gmail.com'", conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
            conn.Close();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        conn.Open();
        SqlDataAdapter da = new SqlDataAdapter("select*from education a inner join addExperience b on a.Email=b.Email inner join profile c on a.Email=c.Email_id inner join Registration_user d on a.Email=d.Email where title like '"+TextBox1.Text+"%'", conn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Repeater1.DataSource = ds;
        Repeater1.DataBind();
        conn.Close();
        
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
        string str = "select title  from addExperience  where title like '" + prefixText + "%'";
        da = new SqlDataAdapter(str, conn);
        dt = new DataTable();
        da.Fill(dt);
        List<string> Output = new List<string>();
        for (int i = 0; i < dt.Rows.Count; i++)
            Output.Add(dt.Rows[i][0].ToString());
        conn.Close();
        return Output;
    }
}