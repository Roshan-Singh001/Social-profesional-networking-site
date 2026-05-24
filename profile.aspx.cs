using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class profile : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;
    static String imagelink;
    static String email;
    static string name;
    static string mes;
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (Session["UN"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        if (!IsPostBack)
        {
            if (Session["vn"] != null)
            {
                email = Session["vn"].ToString();
                ShowProfileImage(Session["vn"].ToString()
                    );
                Button14.Visible = false;
                FileUpload1.Visible = false;
                bg.Visible = false;
                b2.Visible = false;
                b3.Visible = false;
                Session.Remove("vn");
            }
            else
            {
                email = Session["UN"].ToString();
                ShowProfileImage(Session["UN"].ToString());
            }
        }

        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        dis.Visible = false;
    }

    private void ShowProfileImage(string UserId)
    {
        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        conn.Open();
        cmd = new SqlCommand("Select profile_pic from profile where Email_id='" + UserId + "' ", conn);
        Image6.ImageUrl = Convert.ToString(cmd.ExecuteScalar());
        conn.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        conn.Open();
        cmd = new SqlCommand("insert into addExperience(c_name,title,time_st,time_form,location,message, Email)values('" + company.Text + "','" + title.Text + "'," + DropDownList1.SelectedValue + "," + DropDownList2.SelectedValue + ",'" + address.Text + "','" + mess.Text + "','" + email + "')", conn);
        cmd.ExecuteNonQuery();
        company.Focus();
        company.Text = "";
        title.Text = "";
        DropDownList1.SelectedValue = "";
        DropDownList2.SelectedValue = "";
        address.Text = "";
        mess.Text = "";
        conn.Close();
    }
    protected void nahi_Click(object sender, EventArgs e)
    {
        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        conn.Open();
        cmd = new SqlCommand("insert into education(University,Degree,Study_type,start_year,end_year,discrption,Email)values('" + school.Text + "','" + pro.Text + "','" + TextBox8.Text + "'," + DropDownList4.SelectedValue + "," + DropDownList5.Text + ",'" + TextBox9.Text + "','" + email + "')", conn);
        int x = cmd.ExecuteNonQuery();
        if (x > 0)
        {
            Console.Write("data is saved in database");
            school.Focus();
            school.Text = "";
            pro.Text = "";
            TextBox8.Text = "";
            DropDownList4.SelectedValue = "";
            DropDownList5.SelectedValue = "";
            TextBox9.Text = "";
        }
        else
        {
            Console.Write("data is not found");
        }
        conn.Close();
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        PopupControlExtender1.Commit(RadioButtonList1.SelectedValue);

    }

    protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        PopupControlExtender2.Commit(RadioButtonList2.SelectedValue);

    }
    protected void Button14_Click(object sender, EventArgs e)
    {

        string lname;
        if (uploadimage() == true)
        {
            conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
            conn.Open();
            cmd = new SqlCommand("update profile set profile_pic ='" + imagelink + "' where Email_id='" + email + "'", conn);
            int x = cmd.ExecuteNonQuery();
            if (x > 0)
            {

                cmd = new SqlCommand("select*from Registration_user where Email='" + email + "' ", conn);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    name = dr["f_name"].ToString();
                    lname = dr["l_name"].ToString();
                    mes = name + " " + lname + " " + "updated our profile pic ";
                    dr.Close();
                }



                cmd = new SqlCommand("insert into notification (email_id,message)values('" + email + "','" + mes + "')", conn);
                cmd.ExecuteNonQuery();
            }
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



                    FileUpload1.SaveAs(Server.MapPath("~/ProfileImage/") + rndnumber + ".jpg");
                    //  Image6.ImageUrl = "~/ProfileImage/" + ".jpg";
                    imagelink = "ProfileImage/" + rndnumber + ".jpg";
                    imagesaved = true;
                }
                else
                {
                    Label5.Text = "File Size exceeds 50 KB - Please Upload File Size Maximum 50 KB";
                }

            }
            else
            {
                Label5.Text = "Only JPEG/JPG Image File Acceptable - Please Upload Image File Again";
            }
        }
        else
        {
            Label5.Text = "You have not selected any file - Browse and Select File First";
        }

        return imagesaved;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label17.Text = "";
        Label18.Text = "";
        Label13.Text = "";
        Label14.Text = "";
        Label15.Text = "";
        Label16.Text = "";
        Table4.Visible = false;
        dis.Visible = true;

        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        conn.Open();
        cmd = new SqlCommand("select*from education where Email='" + email + "'", conn);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label17.Text = "Education details :-";
            Label18.Text = dr["University"].ToString();
            Label13.Text = dr["Degree"].ToString();
            Label14.Text = dr["Study_type"].ToString();
            Label15.Text = dr["start_year"].ToString();
            Label16.Text = dr["end_year"].ToString();
        }
        else
        {
            Label18.Text = "NO education details found";
        }
    }


    protected void Button10_Click(object sender, EventArgs e)
    {
        Label17.Text = "";
        Label18.Text = "";
        Label13.Text = "";
        Label14.Text = "";
        Label15.Text = "";
        Label16.Text = "";
        Table4.Visible = false;
        dis.Visible = true;

        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        conn.Open();
        cmd = new SqlCommand("select*from addExperience where Email='" + email + "'", conn);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label17.Text = "Experience Details :-";
            Label18.Text = dr["c_name"].ToString();
            Label13.Text = dr["title"].ToString();
            Label14.Text = dr["location"].ToString();
            Label15.Text = dr["time_st"].ToString();
            Label16.Text = dr["time_form"].ToString();
        }
        else
        {
            Label17.Text = "No experience details found";
        }
    }

    protected void Button12_Click(object sender, EventArgs e)
    {
        dis.Visible = false;
        Table4.Visible = true;
        conn.Open();
        cmd = new SqlCommand("select*from Registration_user where  Email='" + email + "'", conn);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label3.Text = "Contact Details:-";
            Label10.Text = "Email_id";
            Label11.Text = dr["Email"].ToString();
            Label19.Text = "Careear:";
            Label20.Text = dr["f_name"].ToString() + " " + dr["l_name"].ToString() + "-" + dr["R_id"].ToString();
        }
        else
        {
            Label10.Text = "No Contact Details";
        }
    }

}
