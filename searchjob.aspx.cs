using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
public partial class searchjob : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection conn;
    SqlDataReader dr;
    static string email;
    static string resumelink;
    static string job_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
      /*  if (!IsPostBack)
        {
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter("select*from jobpost inner join company_profile on jobpost.email_id=company_profile.email_id", conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            //            DataSet ds =;
          GridView1.DataSource =ds;
          GridView1.DataBind();
        }*/
       app.Visible = false;
    }
    protected void Button6_Click(object sender, EventArgs e)
    {

    }
   
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "view")
        {
            int rowindex = Convert.ToInt32(e.CommandArgument.ToString().Trim());
            GridViewRow row = GridView1.Rows[rowindex];
            // member = (row.FindControl("Label2") as Label).Text;
            email = (row.FindControl("HiddenField1") as HiddenField).Value;
            job_id = (row.FindControl("HiddenField2") as HiddenField).Value;
            Session["JOB"] = email;
            t1.Visible = true;
            ModalPopupExtender1.Show();
        }
      
        ShowProfileImage(email);

    }
    private void ShowProfileImage(string email)
    {
        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        conn.Open();
        cmd = new SqlCommand("select*from jobpost a inner join company_profile b on a.email_id=b.email_id where a.email_id='" + email+ "'", conn);
       dr= cmd.ExecuteReader();
        if (dr.Read())
        {
            Image7.ImageUrl = dr["profile_pic"].ToString();
            Label3.Text = dr["company_name"].ToString();
            Label4.Text = dr["location"].ToString();
            Label5.Text = dr["j_discription"].ToString();
            Label6.Text = dr["job_role"].ToString();
            Label7.Text = dr["qualification"].ToString();
            Label8.Text = dr["Canidate_profile"].ToString();
            Label9.Text = dr["job_role"].ToString();
            Label10.Text = dr["annual"].ToString() + "-" + dr["max_salary"].ToString();
            Label11.Text = "Full time";
            Label12.Text = dr["work_ex"].ToString();
            Label13.Text = email;
            conn.Close();
        }
    }


   /* protected void Button8_Click(object sender, EventArgs e)
    {
        app.Visible = true;
    }*/

    protected void Button1_Click(object sender, EventArgs e)
    {
        app.Visible = true;
    }
   
     private Boolean uploadresume()
    {
        Random rnd = new Random();
        String rndnumber = rnd.Next().ToString();
        Boolean resumesaved = false;
       
        if (FileUpload1.HasFile == true)
        {
          
            String contenttype = FileUpload1.PostedFile.ContentType;

            if (contenttype == "application/pdf")
            {
                int filesize;
                filesize = FileUpload1.PostedFile.ContentLength;

                if (filesize <= 10001200)
                {
                   // System.Drawing.Image img = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);



                    FileUpload1.SaveAs(Server.MapPath("~/UploadResume/") + rndnumber + ".pdf");
                  //  Image6.ImageUrl = "~/ProfileImage/" + ".jpg";
                    resumelink = "UploadResume/" + rndnumber + ".pdf";
                    resumesaved  = true;
                }
                else
                {
                    Label14.Text = "File Size exceeds 50 KB - Please Upload File Size Maximum 50 KB";
                }

            }
            else
            {
                Label14.Text = "Only pdf Image File Acceptable - Please Upload Image File Again";
            }
        }
        else
        {
            Label14.Text = "You have not selected any file - Browse and Select File First";
        }

        return resumesaved;

    }

     protected void Button10_Click1(object sender, EventArgs e)
     {
         if (uploadresume() == true)
         {
             conn.Open();
             cmd = new SqlCommand("insert into apply_job(email_id,ph_number,resume,full_name,employee_email,jobP_id)values('" + TextBox4.Text + "'," + TextBox5.Text + ",'" + resumelink + "','" + TextBox6.Text + "','" + email + "','"+job_id+"')", conn);
             int x=cmd.ExecuteNonQuery();
             if (x > 0)
             {
                 Label14.Text = "your datas is saedd";
             }
             conn.Close();
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
         string str = "select j_title from jobpost where j_title like '" + prefixText + "%'";
         da = new SqlDataAdapter(str, conn);
         dt = new DataTable();
         da.Fill(dt);
         List<string> Output = new List<string>();
         for (int i = 0; i < dt.Rows.Count; i++)
             Output.Add(dt.Rows[i][0].ToString());
         conn.Close();
         return Output;
     }
     [System.Web.Script.Services.ScriptMethod()]
     [System.Web.Services.WebMethod]
     public static List<string>
     SearchAddress(string prefixText)
     {
         SqlConnection conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
         conn.Open();
         SqlDataAdapter da;
         DataTable dt;
         DataTable result = new DataTable();
         string str = "select location from jobpost where location like '" + prefixText + "%'";
         da = new SqlDataAdapter(str, conn);
         dt = new DataTable();
         da.Fill(dt);
         List<string> Output = new List<string>();
         for (int i = 0; i < dt.Rows.Count; i++)
             Output.Add(dt.Rows[i][0].ToString());
         conn.Close();
         return Output;
     }
     protected void Button11_Click(object sender, EventArgs e)
     {

     }
     protected void Button2_Click(object sender, EventArgs e)
     {
         conn.Open();
         SqlDataAdapter da = new SqlDataAdapter("select*from jobpost inner join company_profile on jobpost.email_id=company_profile.email_id where j_title like '"+TextBox2.Text+"%'", conn);
         DataSet ds = new DataSet();
         da.Fill(ds);
         //            DataSet ds =;
         GridView1.DataSource = ds;
         GridView1.DataBind();
     }
}