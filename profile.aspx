<%@ Page Title="" Language="C#" MasterPageFile="~/clients.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
         .auto-style5 {
        width: 24%;
        height: 39px;
             margin-left: 65px;
         }
    .auto-style6 {
        width: 352px;
            background-color: #FFFFFF;
        }
    .auto-style7 {

        width: 34%;
            position:absolute;
            top: 446px;
            left: 15px;
            height: 245px;
            text-align:left;
            background-color: #663300;
        }
    .auto-style8 {
             width: 275px;
             background-color: #00CCFF;
         }
        .pr {
            border-radius:50px;
               margin-left: 0px;
           }
        .auto-style11 {
            width: 1116px;
            background-color: #FFFFFF;
        }
        .auto-style12 {
            color: #0000CC;
        }
        .auto-style13 {
            color: #000066;
        }
        .auto-style14 {
            width: 1116px;
            height: 27px;
            background-color: #FFFFFF;
        }
        .auto-style15 {
            width: 1116px;
            height: 26px;
            background-color: #FFFFFF;
        }
        .bp1{
             margin-left:100px;
            background-color: #3333FF;
            color: #FFFFFF;
        }
        .tt {
            width: 46%;
            margin-left: 122px;
            position: absolute;
            background-color:white;
            color:#FFCCCC;
            font-size:larger;

        }

        .auto-style19 {
            background-color: #000066;
        }
        .dr1 {
            margin-left:80px;
            margin-top: 0px;
        }
        .2 {
            margin-top: 51px;
            position:absolute;
            text-align:left;
        }
        .auto-style16 {
            height: 19px;
            width: 556px;
            background-color: #FFFFFF;
        }
    
        .auto-style16 {
            width: 556px;
        }
        .tt {
            margin-top: 0px;
            top: 433px;
            left: 428px;
            
        }
        .auto-style22 {
            width: 437px;
            height: 45px;
            background-color: #999966;
        }
        .auto-style23 {
            width: 275px;
            height: 45px;
            background-color: #00CCFF;
        }
        .auto-style24 {
             width: 437px;
             background-color: #999966;
         }
        #ti2 {
            background-color:#FFFFFF;
            color:#993300;
            height: 389px;
        }
        .auto-style25 {
            height: 19px;
            width: 556px;
            color: black;
            background-color: #FFFFFF;
        }
        .im {
             background-image:url('');
            margin:0;
	 padding:0;
     height:auto;
     width:100%;
	
     background-position:center;
	 background-size:cover;
     background-repeat:no-repeat;
	 background-position:center;
	 font-family:sams-serif;
            background-repeat:no-repeat;
            
        }
        .bb2 {
            margin-left:220px;
            color: #FFFFFF;
            background-color: #3333CC;
        }
        .bb1 {
            position:absolute;
            top: 349px;
            left: 237px;
            height: 31px;
            width: 115px;
            right: 235px;
            color: #FFFFFF;
            margin-bottom: 6px;
            background-color: #0000FF;
        }
        .auto-style27 {
            height: 20px;
            width: 556px;
            color: black;
            background-color: #FFFFFF;
        }
        .auto-style28 {
            background-color: #FFFFFF;
        }
        .auto-style29 {
            width: 556px;
            height: 41px;
            background-color: #FFFFFF;
        }
        .tp {
            width:33px;
            height:100px;
        }
           .auto-style30 {
               width: 1116px;
               height: 43px;
               background-color: #FFFFFF;
           }
           .auto-style31 {
               background-color: #333333;
           }
         .modal-body {
             width: 495px;
             margin-bottom: 0px;
         }
         .auto-style32 {
             width: 29%;
         }
         #dis {
             
             
            float:left;
             margin-left:600px;
             position:absolute;
             left: 845px;
             margin-bottom: 0px;
         }
         .auto-style33 {
             width: 347px;
         }
    .auto-style35 {
        font-size: large;
    }
    .auto-style36 {
        font-size: small;
    }
    .auto-style37 {
        font-size: x-small;
    }
         .picmain {
             border-radius:50%;
            
         }
         .text-primary {
             margin-bottom: 0px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="im">
        <center style="height: 249px; width: 1222px">
    
           
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>   
    
           
            <br class="auto-style31" />
            <asp:Image ID="Image6" runat="server" Height="119px" class="picmain" Width="148px" BorderColor="Red" BorderStyle="Solid" ImageUrl="~/d.png" />
            <br />
            <br class="auto-style28" />
            <span class="auto-style28"><asp:FileUpload ID="FileUpload1" runat="server" Height="22px" Width="224px" />
            </span>&nbsp;<br />
            <asp:Label ID="Label5" runat="server"></asp:Label>
            <br />
            <asp:Button ID="Button14" runat="server" class="btn btn-danger" OnClick="Button14_Click" style="color: #FFFFFF; background-color: #0000FF" Text="Change" ValidationGroup="profile" />
            &nbsp;
            <br class="auto-style31" />
            <br />
            <table border="1" class="auto-style5">
                <tr>
                    <td class="auto-style6">
&nbsp;View Profile</td>
                    <td class="auto-style28">
&nbsp;Your Connection</td>
                </tr>
            </table>
           <table id="Table4" runat="server" visible="false" class="auto-style32" style="color: green; height: 73px; margin-left: 136px; top: 327px; margin-top: 0px;">
             <tr>
                 <td class="auto-style33" style="background-color: #FFFF66">&nbsp;<asp:Label ID="Label3" runat="server" Font-Size="Larger" style="color: #663300"></asp:Label>
                     <br /><b></b>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="Label10" runat="server" style="color: #0000CC"></asp:Label>
&nbsp;
                     <br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label11" runat="server" style="color: #000099"></asp:Label>
                     <span class="auto-style35">,</span>&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="Label19" runat="server" style="color: #0000CC"></asp:Label>
                     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label20" runat="server" style="color: #0000CC"></asp:Label>
                     &nbsp;&nbsp; <br />
                 </td>
             </tr>
         </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
            
        </center>
         <table id="dis" runat="server" class="auto-style32" style="color: green; height: 69px; margin-left: 74px; top: 299px; bottom: 156px;">
             
             <tr>
                 <td class="auto-style33" style="background-color: #FFFF66">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label17" runat="server" Font-Size="Larger" style="color: #663300"></asp:Label>
                     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="Label18" runat="server" style="color: #0000CC"></asp:Label>
                     <span class="auto-style37">&nbsp;.</span>
                     <br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label13" runat="server" style="color: #000099"></asp:Label><span class="auto-style36">,</span><br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="Label14" runat="server" style="color: #000099"></asp:Label>
                     &nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="Label15" runat="server" style="color: #0000CC"></asp:Label>
                     -<asp:Label ID="Label16" runat="server" style="color: #0000CC"></asp:Label>
                     &nbsp;&nbsp; <br />
                 </td>
             </tr>
         </table>
    
          

    
<table border="0" class="auto-style7" id="edit" runat="server" >
    <tr>
        <td class="auto-style24">
            <asp:Button ID="Button1" runat="server" Text="Education"  class="btn btn-secondary lg-btn"  OnClick="Button1_Click" ValidationGroup="edu" />
        </td>
        <td class="auto-style8">
            <button type="button" id="bg" runat ="server"  class="btn btn-primary"   data-toggle="modal" data-target="#myModal">Add Education</button>
                </td>
    </tr>
    <tr>
        <td class="auto-style24">
            <asp:Button ID="Button10" runat="server" Height="28px"  class="btn btn-secondary" Text="Experince" Width="115px" OnClick="Button10_Click" ValidationGroup="exp"  />
        </td>
        <td class="auto-style8">
             <button type="button"  id="b2" runat ="server"   class="btn btn-primary" data-toggle="modal" data-target="#gio" >+Add experince</button>
        </td>
    </tr>
    <tr>
        <td class="auto-style22">
            <asp:Button ID="Button11" runat="server" Height="27px" class="btn btn-secondary" Text="Skills" Width="117px"  />
        </td>
        <td class="auto-style23">
            <button type="button"   id="b3" runat ="server"  class="btn btn-primary" data-toggle="modal" data-target="#mary" >+Add experince</button>
        </td>
    </tr>
    <tr>
        <td class="auto-style24">
            <asp:Button ID="Button12" runat="server" Height="29px" class="btn btn-secondary" Text="Contact" Width="117px" OnClick="Button12_Click" ValidationGroup="contact" />
        </td>
        <td class="auto-style8">&nbsp;</td>
    </tr>
</table>
         <div class="modal fade" id="myModal">
              <div class="modal-dialog  modal-dialog-centered">
     
                  <div class="modal-content">
                          <div class="modal-header">
                                <h4 class="text-primary">Add education</h4>
                                <button type="button" class="close" data-dismiss="modal">×</button>
                           &nbsp;
                           </div>
                           <div class="modal-body">
      
               <table id="Table1" border="0"  runat="server"  bgcolor="red" >
                               <tr>
            <td class="auto-style25">Institution / University <span class="auto-style19">*</span></td>
        </tr>
        <tr>
            <td class="auto-style16">
                <asp:TextBox ID="school" runat="server" Height="26px" Width="400px" ></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="school" ErrorMessage="Select the college  name" ForeColor="Red" ValidationGroup="p1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">
                <asp:TextBox ID="pro" runat="server" Height="26px" Width="400px"  ></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="pro" ErrorMessage="Select the program" ForeColor="Red" ValidationGroup="p1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style25">Filed of Study</td>
        </tr>
        <tr>
            <td class="auto-style16"> <asp:TextBox ID="TextBox8" runat="server" Height="26px" Width="400px" CssClass="tp"></asp:TextBox>
               
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox8" ErrorMessage="Select the Education type" ForeColor="Red" ValidationGroup="p1"></asp:RequiredFieldValidator>
               
            </td>
        </tr>
        <tr>
            <td class="auto-style25">Start year&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; End year</td>
        </tr>
        <tr>
            <td class="auto-style16">
              <asp:DropDownList ID="DropDownList4" runat="server" Height="37px" Width="128px">
          <asp:ListItem>---Select---</asp:ListItem>
          <asp:ListItem>1998</asp:ListItem>
          <asp:ListItem>1999</asp:ListItem>
          <asp:ListItem>2000</asp:ListItem>
          <asp:ListItem>2001</asp:ListItem>
          <asp:ListItem>2002</asp:ListItem>
          <asp:ListItem>2003</asp:ListItem>
          <asp:ListItem>2004</asp:ListItem>
          <asp:ListItem>2005</asp:ListItem>
          <asp:ListItem>2006</asp:ListItem>
          <asp:ListItem>2007</asp:ListItem>
          <asp:ListItem>2008</asp:ListItem>
          <asp:ListItem>2009</asp:ListItem>
          <asp:ListItem>2010</asp:ListItem>
          <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
&nbsp;<asp:DropDownList ID="DropDownList5" runat="server" class="dr1" Height="37px" Width="128px">
         <asp:ListItem>--select---</asp:ListItem>
         <asp:ListItem>2000</asp:ListItem>
         <asp:ListItem>2001</asp:ListItem>
         <asp:ListItem>2002</asp:ListItem>
         <asp:ListItem>2003</asp:ListItem>
         <asp:ListItem>2004</asp:ListItem>
         <asp:ListItem>2005</asp:ListItem>
         <asp:ListItem>2006</asp:ListItem>
         <asp:ListItem>2007</asp:ListItem>
         <asp:ListItem>2008</asp:ListItem>
         <asp:ListItem>2009</asp:ListItem>
         <asp:ListItem>2010</asp:ListItem>
         <asp:ListItem>2011</asp:ListItem>
         <asp:ListItem>2012</asp:ListItem>
         <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList4" ErrorMessage="Select the Start year" ForeColor="Red" InitialValue="---Select---" ValidationGroup="p1"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownList5" ErrorMessage="Select the  end year" ForeColor="Red" InitialValue="---Select---" ValidationGroup="p1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">Description(Optional)</td>
        </tr>

        <tr>
            <td class="auto-style29">
                <asp:TextBox ID="TextBox9" runat="server" Height="47px" Width="400px" style="margin-bottom: 0px"></asp:TextBox>
                
            </td>
        </tr>
      </table>
      </div>
      <div class="modal-footer justify-content-center">
          
          <asp:Button ID="nahi"  class="btn btn-secondary" runat="server" Height="29px" Text="Save" Width="78px" OnClick="nahi_Click"  style="color: #FFFFFF; background-color: #FF0000" ValidationGroup="p1"  />
        
           <ajaxtoolkit:popupcontrolextender ID="PopupControlExtender1" runat="server" TargetControlID="school" PopupControlID="Panel1" Position="Center" CommitProperty="value"></ajaxtoolkit:popupcontrolextender>
    <asp:Panel ID="Panel1" runat="server">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
    <asp:RadioButtonList ID="RadioButtonList1"  runat="server" Height="195px"  OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Width="319px" AutoPostBack="True" Style="background-color: #FFFFFF" BackColor="White" BorderColor="Black" BorderStyle="Solid">
                    <asp:ListItem>Indhra Ghandhi National Open University</asp:ListItem>
                    <asp:ListItem>Delhi university</asp:ListItem>
                    <asp:ListItem>Jawaharlal  Nehru University</asp:ListItem>
                    <asp:ListItem>Chaudhary charan singh University</asp:ListItem>
                    <asp:ListItem>Banaras Hindu University</asp:ListItem>
                    <asp:ListItem>Anna Unviersity</asp:ListItem>
                    <asp:ListItem>University of Hyderabad</asp:ListItem>
                    <asp:ListItem>University of delhi</asp:ListItem>
                    <asp:ListItem>Aligarh Muslim University</asp:ListItem>
                    <asp:ListItem>Savitribai Phule Pune University</asp:ListItem>
                    <asp:ListItem>Jadavpur University</asp:ListItem>
                    <asp:ListItem>India INsitute of Science</asp:ListItem>
                </asp:RadioButtonList>
                </ContentTemplate>
            </asp:UpdatePanel>
        </asp:Panel>
          <ajaxtoolkit:popupcontrolextender ID="PopupControlExtender2" runat="server" TargetControlID="pro" PopupControlID="Panel2" Position="Center" CommitProperty="value" ></ajaxtoolkit:popupcontrolextender>
          <asp:Panel ID="Panel2" runat="server">
          <asp:UpdatePanel ID="UpdatePanel2" runat="server">
              <ContentTemplate>
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" Height="195px"  OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged" Width="319px" AutoPostBack="True" Style="background-color: white" BorderColor="Black" BorderStyle="Solid">
                    <asp:ListItem>Bachelor of Computer Application(BCA)</asp:ListItem>
                    <asp:ListItem>Bachelor of Arts(B.A)</asp:ListItem>
                    <asp:ListItem>Bachelor of Dental Surgery(B.D.S)</asp:ListItem>
                    <asp:ListItem>Bachelor of Engineering(B.Tech)</asp:ListItem>
                    <asp:ListItem>Bachelor of Mass Communications B.M.C</asp:ListItem>
                    <asp:ListItem>Bachelor of Nursing</asp:ListItem>
                    <asp:ListItem>Master of Arts(M.A)</asp:ListItem>
                    <asp:ListItem>Master of Computer Application(M.C.A)</asp:ListItem>
                    <asp:ListItem>Bachelor of Education B.Ed</asp:ListItem>
                    <asp:ListItem>Bachelor of Commerce-B.Com</asp:ListItem>
                    <asp:ListItem>Bachelor of Lows L.L.B</asp:ListItem>
                    <asp:ListItem>Doctorate of Medicine D.M</asp:ListItem>
                    <asp:ListItem>Master of Arts</asp:ListItem>
                    <asp:ListItem>Master of Surgery -M.S</asp:ListItem>
                    <asp:ListItem>Doctor of Medicine</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:RadioButtonList>
                  </ContentTemplate>
              </asp:UpdatePanel>
           </asp:Panel>
           </div>
</div>
 </div>
 </div>

    <div class="modal fade" id="gio">
              <div class="modal-dialog  modal-dialog-centered">
               <div class="modal-content">
                          <div class="modal-header">
                                <h4 class="text-primary">Add Experince</h4>
                                <button type="button" class="close" data-dismiss="modal">×</button>
                           </div>
                            <div class="modal-body">
						   <table id="Table2"   runat="server" >
        <tr>
            <td class="auto-style11">Company <span class="auto-style12">*</span></td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:TextBox ID="company" runat="server" Height="24px" Width="398px" ></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Input the Company name" ControlToValidate="company" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Title <span class="auto-style13">*</span></td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:TextBox ID="title" runat="server" Height="26px" Width="400px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter the company title" ControlToValidate="title" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Time Period</td>
        </tr>
        <tr>
            <td class="auto-style11">Form <span class="auto-style13">*</span></td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="31px" Width="227px">
                    <asp:ListItem>---Select---</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                </asp:DropDownList>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="please select the startup year" ControlToValidate="DropDownList1" ForeColor="Red" InitialValue="---Select---"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style30">To</td>
        </tr>
        <tr>
            <td class="auto-style14">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Width="221px">
                    <asp:ListItem>---Select---</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                    <asp:ListItem>2021</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please the fnish company year" ControlToValidate="DropDownList2" ForeColor="Red" InitialValue="---Select---"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Location(Optional)</td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:TextBox ID="address" runat="server" Height="19px" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Description(optional)</td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:TextBox ID="mess" runat="server" Height="57px"  Width="400px"></asp:TextBox>
            </td>
        </tr>
    </table>
    </div>
	<div class="modal-footer justify-content-center">
	<asp:Button ID="Button3"  class="btn btn-danger" runat="server" Height="29px" Text="Save" Width="78px" OnClick="Button3_Click" style="color: #FFFFFF; background-color: #FF0000"  />
	</div>
    </div>
	</div>
	</div>
    
    <br />
    <div class="modal fade" id="mary">
              <div class="modal-dialog  modal-dialog-centered">
             
                  <div class="modal-content">
                          <div class="modal-header">
                                <h4 class="text-primary">Add education</h4>
                                <button type="button" class="close" data-dismiss="modal">×</button>
                           </div>
                           <div class="modal-body">
    <asp:TextBox ID="TextBox10" runat="server" Height="44px" Width="306px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button13" runat="server" Height="45px"  Text="Add" Width="108px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <br />
&nbsp;&nbsp;&nbsp;
                               </div>
                      </div>
                  </div>
        </div>
    <br />
    
     <br />
    
    
     
    
       
    
</asp:Content> 

