using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class home : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;
    SqlDataAdapter da;
    DataSet ds;

    static string imagelink;
    static string email;
    static string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UN"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        email=Session["UN"].ToString();
        ShowProfileImage(Session["UN"].ToString());

        if (Page.IsPostBack == false)
        {
//            DataSet ds =;
            Repeater1.DataSource =  GetData();
            Repeater1.DataBind();
        }
        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
    }
    private DataSet GetData()
    {
        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        conn.Open();
        SqlDataAdapter da = new SqlDataAdapter("select*from post a inner join profile b on a.email_id=b.Email_id inner join Registration_user c on a.email_id=c.Email", conn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
        
    }
   
    private void ShowProfileImage(string UserId)
    {
        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        conn.Open();
        cmd = new SqlCommand("Select profile_pic from profile where Email_id='" + UserId + "' ", conn);
        Image6.ImageUrl = Convert.ToString(cmd.ExecuteScalar());
        conn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (uploadimage() == true)
        {
            conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
            conn.Open();
            cmd = new SqlCommand("insert into post (email_id,post_image)values('" + email + "','" + imagelink + "')", conn);
            cmd.ExecuteNonQuery();
        }
    }
    private Boolean uploadimage()
    {
        Random rnd = new Random();
        String rndnumber = rnd.Next().ToString();
        Boolean imagesaved = false;
        if (FileUpload1.HasFile == true)
        {

            String contenttype = FileUpload1.PostedFile.ContentType;

            if (contenttype == "image/jpeg")
            {
                int filesize;
                filesize = FileUpload1.PostedFile.ContentLength;

                if (filesize <= 65536)
                {
                    System.Drawing.Image img = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);



                    FileUpload1.SaveAs(Server.MapPath("~/postimage/") + rndnumber + ".jpg");
                    //  Image6.ImageUrl = "~/ProfileImage/" + ".jpg";
                    imagelink = "postimage/" + rndnumber + ".jpg";
                    imagesaved = true;
                }
                else
                {
                    Label3.Text = "File Size exceeds 50 KB - Please Upload File Size Maximum 50 KB";
                }
            }
            else
            {
                Label3.Text = "Only JPEG/JPG Image File Acceptable - Please Upload Image File Again";
            }
        }
        else
        {
            Label3.Text = "You have not selected any file - Browse and Select File First";
        }
        return imagesaved;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
       
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
        string str = "select (f_name+' '+l_name )as fullname from Registration_user where f_name like '"+prefixText+"%'";
        da = new SqlDataAdapter(str, conn);
        dt = new DataTable(); 
        da.Fill(dt);
        List<string> Output = new List<string>();
        for (int i = 0; i < dt.Rows.Count; i++)
            Output.Add(dt.Rows[i][0].ToString());
        conn.Close();
        return Output;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        conn.Open();
        cmd = new SqlCommand("select Email from Registration_user where (f_name+' '+l_name)='" + TextBox2.Text + "'", conn);
       dr= cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["UN"] = dr["Email"].ToString();
            Response.Redirect("Profile.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
  /*  protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        foreach (RepeaterItem i in Repeater1.Items)
        {
           // id = ()i.FindControl("HiddenField1");
            id = ((HiddenField)i.FindControl("HiddenField1") ).Value;
            Session["vn"] = id;
            Response.Redirect("profile.aspx");
        }
    }*/


    protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
    {
      RepeaterItem item = (sender as ImageButton).NamingContainer as RepeaterItem;
        id = (item.FindControl("HiddenField1") as HiddenField).Value;
        Session["vn"] = id;
        Response.Redirect("profile.aspx");
   
    }
} 