<%@ Page Title="" Language="C#" MasterPageFile="~/clients.master" AutoEventWireup="true" CodeFile="searchjob.aspx.cs" Inherits="searchjob" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .modalBackground
    {
        background-color: Black;
        filter: alpha(opacity=40);
        opacity: 0.4;
    }
        .l1 {
            color:blue;
        }
    .modalPopup
    {
        background-color: #FFFFFF;
        width: 300px;
        border: 3px solid #0DA9D0;
    }
        .auto-style3 {
            width: 29%;
        }
        .auto-style4 {
            width: 117px;
        }
        .auto-style5 {
            width: 151px;
        }
        .auto-style6 {
            width: 78%;
        }
        .jb {
            border-radius:10px;
            border:1px solid red;
        }
        .auto-style7 {
            width: 99%;
        }
        .auto-style8 {
        }
        .auto-style9 {
        }
        .auto-style10 {
            text-decoration: underline;
        }
        .auto-style11 {
            text-decoration: underline;
            color: #FF0000;
        }
        .auto-style12 {
            color: #993300;
            width: 549px;
        }
        .auto-style13 {
            color: #FF0000;
        }
        .auto-style14 {
            color: #0000CC;
        }
        .auto-style15 {
            background-color: #fff;
            color: #0000FF;
        }
        .auto-style16 {
            color: #CC0000;
        }
        .auto-style17 {
            width: 549px;
        }
        .auto-style18 {
            color: #3333FF;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="37px" Width="381px"></asp:TextBox>
        <ajaxToolkit:AutoCompleteExtender ID="TextBox2_AutoCompleteExtender" runat="server" BehaviorID="TextBox2_AutoCompleteExtender" DelimiterCharacters=""  TargetControlID="TextBox2" MinimumPrefixLength="1" CompletionInterval="100" ServiceMethod="SearchUser">
        </ajaxToolkit:AutoCompleteExtender>
        <asp:TextBox ID="TextBox3" runat="server" Height="37px" Width="382px"></asp:TextBox>
        <ajaxToolkit:AutoCompleteExtender ID="TextBox3_AutoCompleteExtender" runat="server" BehaviorID="TextBox3_AutoCompleteExtender" DelimiterCharacters="" TargetControlID="TextBox3" MinimumPrefixLength="1" CompletionInterval="100" ServiceMethod="SearchAddress">
        </ajaxToolkit:AutoCompleteExtender>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="37px" style="color: #FFFFFF; background-color: #FF0000" Text="Search job" Width="87px" OnClick="Button2_Click" />
    </p>
    
        <center>
        <table class="auto-style3" border="1">
            <tr>
                <td class="auto-style5">Saved</td>
                <td class="auto-style4">Applied</td>
                <td>
                    </tr>
                    </table>
            <br />
       <center style="width: 593px; height: 1px;">
    <table class="auto-style6" border="1">
        <tr>
            <td>
                <asp:Button ID="Button3" runat="server" Height="35px" class="jb" style="color: #FFFFFF; background-color: #808080" Text="Fresher" Width="131px" />
            </td>
            <td>
                <asp:Button ID="Button4" runat="server" Height="35px" class="jb" style="color: #FFFFFF; background-color: #808080" Text="Internship" Width="131px" />
            </td>
            <td>
                <asp:Button ID="Button5" runat="server" Height="35px" class="jb" style="color: #FFFFFF; background-color: #808080" Text="IT" Width="131px" />
            </td>
            <td>
                <asp:Button ID="Button6" runat="server" Height="35px" class="jb" OnClick="Button6_Click" style="color: #FFFFFF; background-color: #808080" Text="Goverment" Width="131px" />
            </td>
        </tr>
    </table>
        <br />

    <table class="w-100">
        <tr>
            <td>Jobs&nbsp; for you</td>
        </tr>
    </table>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical"  Width="487px" AutoGenerateRow="false" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:TemplateField HeaderText="Jobs  for  you">
                    <ItemTemplate>
                        <table class="w-100" runat="server" >
                            <tr >
                                <td>
                                    <asp:Image ID="Image6"   runat="server" Height="67px" Width="77px" ImageUrl='<%# Eval("profile_pic") %>'/>
                                </td>
                                <td> <asp:Label ID="Label1" runat="server" Text='<%# Eval("j_title") %>' style="color: #0000FF" Font-Size="Large"></asp:Label> <br /><asp:Label ID="Label2" runat="server" Text='<%# Eval(" company_name") %>' style="color: #663300"></asp:Label> 
                                    <br />
                                    <asp:Label ID="Label15" runat="server" Font-Size="Small" Text='<%# Eval("location") %>'></asp:Label>
                                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("email_id") %>'></asp:HiddenField> <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("job_id") %>'></asp:HiddenField> </td>
                                                  
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField >
                 <asp:ButtonField ButtonType="Link" Text="View job" CommandName="view"   />

            </Columns>
            
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
           <br />
           <br />
           <asp:LinkButton ID="LinkButton1" runat="server"></asp:LinkButton>
           <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="LinkButton1" PopupControlID="Panel1" CancelControlID="Button9" BackgroundCssClass="modalBackground" ></ajaxToolkit:ModalPopupExtender>
           <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup"  >
           <table class="auto-style7" style="text-align:left; height: 181px; border:1px solid black" id="t1" runat="server" visible="false">
               <tr>
                   <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Image ID="Image7" runat="server" Height="77px" style="border-radius:5px;border:1px solid blue" Width="141px" />
                       <br />
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                       <br />
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                       <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Button ID="Button7" runat="server" Height="24px" style="background-color: #FFCC99" Text="SAVE" Width="55px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Button ID="Button1" runat="server" Text="Apply" BackColor="Blue" ForeColor="White" OnClick="Button1_Click"></asp:Button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
               </tr>
               </table>
               <br />
               <table style="border:1px solid blue; width: 289px;">
               <tr>
                   <td>&nbsp;&nbsp;&nbsp; <span class="auto-style8">&nbsp;<span class="auto-style11">Description</span></span>&nbsp;</td>
               </tr>
               <tr>
                   <td>
                       <asp:Label ID="Label5" runat="server" CssClass="l1"></asp:Label>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style11">Required Soft Skills:</td>
               </tr>
               <tr>
                   <td>
                       <asp:Label ID="Label6" runat="server" CssClass="l1"></asp:Label>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style11">PREFERRED QUALIFICATIONS</td>
               </tr>
               <tr>
                   <td>
                       <asp:Label ID="Label7" runat="server" CssClass="l1"></asp:Label>
                   </td>
               </tr>
                <tr>
                   <td class="auto-style11">Desired Candidate profile</td>
               </tr>
                <tr>
                   <td class="auto-style8">
                       <asp:Label ID="Label8" runat="server" CssClass="l1"></asp:Label>
                       <br />
                    </td>
               </tr>
                <tr>
                   <td class="auto-style11">Role</td>
               </tr>
                <tr>
                   <td class="auto-style8">
                       <asp:Label ID="Label9" runat="server" CssClass="l1"></asp:Label>
                       <br />
                    </td>
               </tr>
                <tr>
                   <td class="auto-style9"><span class="auto-style11">Salary</span> </td>
               </tr>
                <tr>
                   <td class="auto-style8">
                       <asp:Label ID="Label10" runat="server" CssClass="l1"></asp:Label>
                       <br />
                    </td>
               </tr>
                <tr>
                   <td class="auto-style11">Employment Type</td>
               </tr>
               <tr>
                   <td>

                       <asp:Label ID="Label11" runat="server" CssClass="l1"></asp:Label>

                   </td>
               </tr>
               <tr>
                   <td><span class="auto-style9"><span class="auto-style10">Work Experience&nbsp; </span>:&nbsp;

                       <asp:Label ID="Label12" runat="server" CssClass="l1"></asp:Label>

                   &nbsp;&nbsp; </span>&nbsp;</td>
               </tr>
                <tr>
                   <td>Contact:&nbsp; <span class="auto-style9">

                       <asp:Label ID="Label13" runat="server" CssClass="l1"></asp:Label>

                       </span></td>
               </tr>
                <tr>
                   <td>
                       <asp:Button ID="Button9" runat="server" Height="28px" style="color: #FFFFFF; background-color: #FF0000" Text="Close" Width="63px" />
                    </td>
               </tr>
           </table>
                 </asp:Panel>     
           <br />
                </td>
            </tr>
        </table>
           
            <table id="app" runat ="server" class="w-100" style="text-align:left;border:1px solid blue;background-color: #FFFFFF;"  >
                <tr>
                    <td class="auto-style12">Here you fill your Contact and profile details<br />
                        <span class="auto-style18">Full Name </span><span class="auto-style13">*</span><span class="auto-style18"><br />
                        <asp:TextBox ID="TextBox6" runat="server" Height="34px" Width="384px" BorderColor="#993300" BorderStyle="Solid"></asp:TextBox>
                        </span></td>
                </tr>
                <tr>
                    <td class="auto-style17"><span class="auto-style14">Email</span> <span class="auto-style13">*</span></td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox4" runat="server" Height="34px" Width="384px" BorderColor="#993300" BorderStyle="Solid"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Email id is required" ForeColor="#CC0000" ValidationGroup="apply"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17"><span class="auto-style15">Phone Number</span><span class="auto-style13"> *</span></td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox5" runat="server" Height="34px" Width="384px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Phone number is requried" ForeColor="Red" ValidationGroup="apply"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17"><span class="l1">Upload your cv/resume </span><span class="auto-style16">*</span></td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <br />
                        <asp:Label ID="Label14" runat="server"></asp:Label>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Upload your resume/cv" ForeColor="Red" ValidationGroup="apply"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">
                       &nbsp;&nbsp;&nbsp;&nbsp <asp:Button ID="Button10" runat="server" BackColor="Blue" BorderColor="#FFCCFF" ForeColor="#FFCCFF" Height="31px" Text="Submit" Width="75px" ValidationGroup="apply" OnClick="Button10_Click1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button11" runat="server" BackColor="#FFCC66" BorderColor="#FFCCFF" ForeColor="Blue" Height="31px" Text="Cancel" Width="75px" OnClick="Button11_Click" ValidationGroup="apply" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                </tr>
           </table>
             
            </center>
</asp:Content>

