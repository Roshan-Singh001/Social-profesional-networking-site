using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class company_profile : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;
    static String imagelink;
    static String email;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UN"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        email = Session["UN"].ToString();
        ShowProfileImage(Session["UN"].ToString());
        
        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");

        conn.Open();
        cmd = new SqlCommand("select*from company_reg where c_email_id='" + email + "'", conn);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label2.Text = dr["c_name"].ToString() + "<br>" + dr["c_address"].ToString();
        }
        conn.Close();
        BindQualties();
    }



    private void ShowProfileImage(string UserId)
    {
        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        conn.Open();
        cmd = new SqlCommand("Select profile_pic from company_profile where email_id='" + UserId + "' ", conn);
        Image6.ImageUrl = Convert.ToString(cmd.ExecuteScalar());
        conn.Close();
    }

    protected void Button14_Click(object sender, EventArgs e)
    {

        if (uploadimage() == true)
        {
            conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
            conn.Open();
            cmd = new SqlCommand("update company_profile set profile_pic ='" + imagelink + "' where email_id='" + email + "'", conn);
            int x = cmd.ExecuteNonQuery();

            conn.Close();
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

                if (filesize <= 51200)
                {
                    System.Drawing.Image img = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);



                    FileUpload1.SaveAs(Server.MapPath("~/company_logo/") + rndnumber + ".jpg");
                    //  Image6.ImageUrl = "~/ProfileImage/" + ".jpg";
                    imagelink = "company_logo/" + rndnumber + ".jpg";
                    imagesaved = true;
                }
                else
                {
                    Label1.Text = "File Size exceeds 50 KB - Please Upload File Size Maximum 50 KB";
                }

            }
            else
            {
                Label1.Text = "Only JPEG/JPG Image File Acceptable - Please Upload Image File Again";
            }
        }
        else
        {
            Label1.Text = "You have not selected any file - Browse and Select File First";
        }

        return imagesaved;

    }
  
    protected void Button15_Click1(object sender, EventArgs e)
    {
        conn.Open();
        cmd = new SqlCommand("Select * from company_profile where email_id='" + email + "'", conn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows == false)
        {
            cmd = new SqlCommand("insert into company_profile(qualties)values('" + TextBox2.Text + "')", conn);
            cmd.ExecuteNonQuery();
        }
        else
        {
            dr.Read();

            string Qualties = dr["Qualties"].ToString();

            dr.Close();
            cmd = new SqlCommand("update company_profile set qualties='" + Qualties + "'+','+'" + TextBox2.Text + "' where email_id='" + email + "'", conn);
            cmd.ExecuteNonQuery();
        }

        conn.Close();
        BindQualties();
    }

    private void BindQualties()
    {
        conn.Open();
        cmd = new SqlCommand("Select Qualties from company_profile where email_id='" + email + "'", conn);
        dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            dr.Read();
            string z = dr["Qualties"].ToString();
            string[] QualtiesList = z.Split(',');

            foreach (string aa in QualtiesList)
            {
                Label3.Text = Label3.Text+"     " + aa + "     ";
            }
        }
        conn.Close();

    }
    protected void Button16_Click(object sender, EventArgs e)
    {
        conn.Open();
        cmd = new SqlCommand("update company_profile set c_discription ='" + TextBox1.Text + "',website_url='" + TextBox3.Text + "',c_size='" + DropDownList1.SelectedValue + "',industry ='" + DropDownList2.SelectedValue + "'  where  email_id='" + email + "'", conn);
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}