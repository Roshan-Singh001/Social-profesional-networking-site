using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
public partial class Registration_user : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;
    string ip;
    string pass;
    string email;
    string working_type = string.Empty;
    public void getIP()
    {

        string IPaddr = string.Empty;
        if (HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDER_FOR"] != null)
        {
            IPaddr = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDER_FOR"].ToString();
        }
        else if (HttpContext.Current.Request.UserHostAddress.Length != 0)
        {
            IPaddr = HttpContext.Current.Request.UserHostAddress;

        }

        ip = "your Ip Address is:" + IPaddr;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (!IsPostBack)
        {
            RadioButtonList1.Visible = false;
            RadioButtonList2.Visible = false;
            cascadingdropdown();
        }
        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        conn.Open();
        getIP();
        HiddenField1.Value = "ram";
        
    }
    protected void cascadingdropdown()
    {
        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        conn.Open();
        cmd = new SqlCommand("select*from[dbo].[country]", conn);
        cmd.CommandType = CommandType.Text;
        countrytxt.DataSource = cmd.ExecuteReader();
        countrytxt.DataTextField = "Cuntry_name";
        countrytxt.DataValueField = "Cuntry_id";
        countrytxt.DataBind();
        countrytxt.Items.Insert(0, new ListItem("--Select Cuntry--", "0"));

    }
    protected void countrytxt_SelectedIndexChanged(object sender, EventArgs e)
    {
        int CountryId = Convert.ToInt32(countrytxt.SelectedValue);
        cmd = new SqlCommand("select*from[dbo].[State] where Cuntry_id=" + CountryId + "", conn);
        cmd.CommandType = CommandType.Text;
        statetxt.DataSource = cmd.ExecuteReader();
        statetxt.DataTextField = "State_name";
        statetxt.DataValueField = "State_id";
        statetxt.DataBind();
        statetxt.Items.Insert(0, new ListItem("--Select State--", "0"));
    }
    protected void statetxt_SelectedIndexChanged(object sender, EventArgs e)
    {
        int stateid = Convert.ToInt32(statetxt.SelectedValue);
        cmd = new SqlCommand("select*from[dbo].[ciity] where state_id=" + stateid + "", conn);
        cmd.CommandType = CommandType.Text;
        distic.DataSource = cmd.ExecuteReader();
        distic.DataTextField = "City_name";
        distic.DataValueField = "City_Id";
        distic.DataBind();
        distic.Items.Insert(0, new ListItem("-- Select City--", "0"));
        conn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label2.Text = HiddenField1.Value;
        pass = HiddenField1.Value;   
        t1.Visible = false;
        t2.Visible = true;
        bb.Visible = true;
        t3.Visible = false;
        t4.Visible = false;
        t5.Visible = false;
        Label3.Visible = true;
       
        Label3.Text = "Welcome " + Fnametxt.Text + "! Let's start your profile,connect to pople you\n know,and engage with them on topics you care about";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Label3.Visible = false;
        Label4.Text = "In this section you selected your working type means if you are student select student and if you empoyee then select employee";
        t1.Visible = false;
        t2.Visible = false;
        bb.Visible = false;
        t3.Visible = true;
        t4.Visible = false;
        t5.Visible = false;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Label4.Visible = false;
        t1.Visible = false;
        t2.Visible = false;
        bb.Visible = false;
        t3.Visible = false;
        Label3.Visible = true;
        if (RadioButton1.Checked == true)
        {
            RadioButtonList1.Visible = true;
            RadioButtonList2.Visible = true;
            Label3.Text = "In this section you fill your educational information";
            t4.Visible = true;
            t5.Visible = false;

        }
        else if (employeeRad.Checked == true)
        {
            Label3.Text = "In this section you fill your Proffesional information";
            t5.Visible = true;
            t4.Visible = false;
        }
     }
    protected void Button5_Click(object sender, EventArgs e)
    {
        RadioButtonList1.Visible = false;
        RadioButtonList2.Visible = false;
        if (RadioButton1.Checked)
        {
            working_type = "student";
        }
        else if (employeeRad.Checked)
        {
            working_type = "Employee";
        }
        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        conn.Open();
        cmd = new SqlCommand("insert into  login_user(email_id,password,user_type)values('" + Emailtxt.Text + "','" + passtxt.Text + "','user')", conn);
        cmd.ExecuteNonQuery();
        cmd = new SqlCommand("insert into Registration_user(f_name,l_name,Email,password,country,Stat,working_type,univer,programe,start_year,end_year,Registration_time,clint_ipaddress,city)values('" + Fnametxt.Text + "','" + Lnametxt.Text + "','" + Emailtxt.Text + "','" +passtxt.Text+ "','" + countrytxt.SelectedItem + "','" + statetxt.SelectedItem + "','" + @working_type + "','" + Unitxt.Text + "','" + progtxt.Text + "','" + starttxt.SelectedValue + "','" + Endtxt.SelectedValue + "',GETDATE(),'" + ip.ToString() + "','" + distic.SelectedItem + "')", conn);
        int x=cmd.ExecuteNonQuery();
        if (x > 0)
        {
            t4.Visible = false;
            t1.Visible = true;
            sendusermail(Fnametxt.Text, Lnametxt.Text, Emailtxt.Text);
            Fnametxt.Text = "";
            Fnametxt.Focus();
            Lnametxt.Text = "";
            Emailtxt.Text = "";
            passtxt.Text = "";
            Rpass.Text = "";
            Response.Redirect("Default.aspx");
        }
        conn.Close();
     } 
    protected void Button6_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked)
        {
            working_type = "student";
        }
        else if (employeeRad.Checked)
        {
            working_type = "Employee";
        }
        conn = new SqlConnection("server=PRIYANSHU_PC\\PRIYANSHU; Initial Catalog=socialsites; Integrated Security=true");
        conn.Open();
        cmd = new SqlCommand("insert into  login_user(email_id,password,status,user_type)values('" + Emailtxt.Text + "','" + passtxt.Text + "','Active','user')", conn);
        cmd.ExecuteNonQuery();
        cmd = new SqlCommand("insert into Registration_user(f_name,l_name,Email,password,country,Stat,working_type,company_name,prof_type,start_year,Registration_time,clint_ipaddress,city)values('" + Fnametxt.Text + "','" + Lnametxt.Text + "','" + Emailtxt.Text + "','" + passtxt.Text + "','" + countrytxt.SelectedItem + "','" + statetxt.SelectedItem + "','" + @working_type + "','" + comtxt.Text + "','" + proftxt.SelectedValue + "','" + jointxt2.SelectedValue + "',GETDATE(),'" + ip.ToString() + "','" + distic.SelectedItem + "')", conn);
        int x = cmd.ExecuteNonQuery();
        if (x > 0)
        {
            t5.Visible = false;
            t1.Visible = true;
            cmd = new SqlCommand("insert into profile(Email_id,profile_pic)values('" + Emailtxt.Text + "','d.png')", conn);
            cmd.ExecuteNonQuery();
           
            Fnametxt.Text = "";
            Fnametxt.Focus();
            Lnametxt.Text = "";
            Emailtxt.Text = "";
            passtxt.Text = "";
            Rpass.Text = "";
            Response.Redirect("Default.aspx");
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
    private void sendusermail(String fname, String lname, String email)
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("priyanshu101r@gmail.com", "merabhai");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
         msg.Subject = "Welcome on One Step Toward on Career" ;
         msg.Body = "Thanku " + fname + " " + lname + " Join for Social professional Networking site\n\n" + fname + " you can create our profile and you can search job your needed \n"+fname+" you make friend  in this social netwrok";
        string toaddress =email;
        msg.To.Add(toaddress);
        string fromaddress = "Hariti Study Hub <priyanshu101r@gmail.com>";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);
        }
        catch
        {
            throw;
        }
        Label2.Text = "your registration is successful";
       
    }

    protected void Unitxt_TextChanged(object sender, EventArgs e)
    {

    }
}