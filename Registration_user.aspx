<%@ Page Title="" Language="C#" MasterPageFile="~/USER.master" AutoEventWireup="true" CodeFile="Registration_user.aspx.cs" Inherits="Registration_user" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .register {
            width: 509px;
            height: 380px;
            background-color: rgb(0,0,0,.5);
            position: absolute;
            margin-left: 833px;
            margin-top: 35%;
            color: red;
            top: -361px;
            left: -82px;
        }

        .auto-style10 {
            width: 74%;
            background-color: #FFFFFF;
            color: #CC0000;
            height: 38px;
        }

        .auto-style11 {
            width: 148px;
        }

        .auto-style12 {
            width: 255px;
        }

        .auto-style13 {
            width: 74%;
            background-color: #FFFFFF;
        }

        .auto-style14 {
            width: 149px;
        }

        .auto-style15 {
            width: 273px;
        }

        .auto-style16 {
            width: 74%;
            background-color: white;
        }

        .auto-style17 {
            width: 150px;
        }

        .auto-style18 {
            width: 253px;
        }

        .auto-style19 {
            width: 74%;
            background-color: #FFFFFF;
        }

        .auto-style20 {
            color: #FF0000;
        }

        .button {
            background-color: blue;
            border-radius: 13px;
            color: white;
        }

            .button:hover {
                background-color: red;
            }

        #t1 {
            margin-left: 0px;
            margin-top: 0px;
        }

        .auto-style21 {
            width: 148px;
            color: red;
        }

        .res {
            width: 400px;
            height: 100px;
        }

        .auto-style22 {
            width: 271px;
            height: 17px;
        }

        .auto-style23 {
            width: 315px;
            height: 17px;
        }

        .auto-style24 {
            width: 636px;
            height: 17px;
        }

        .auto-style25 {
            width: 271px;
            height: 63px;
        }

        .auto-style26 {
            width: 315px;
            height: 63px;
        }

        .auto-style27 {
            width: 636px;
            height: 63px;
        }

        .auto-style28 {
            width: 149px;
            height: 61px;
        }

        .auto-style29 {
            width: 273px;
            height: 61px;
        }

        .auto-style30 {
            height: 61px;
        }

        .auto-style31 {
            width: 150px;
            height: 54px;
        }

        .auto-style32 {
            width: 253px;
            height: 54px;
        }

        .auto-style33 {
            height: 54px;
        }

        .auto-style34 {
            width: 256px;
        }

        .auto-style35 {
            width: 148px;
            height: 45px;
        }

        .auto-style36 {
            width: 256px;
            height: 45px;
        }

        .auto-style37 {
            height: 45px;
        }

        .auto-style38 {
            width: 271px;
            height: 76px;
        }

        .auto-style39 {
            width: 315px;
            height: 76px;
        }

        .auto-style40 {
            width: 636px;
            height: 76px;
        }

        .auto-style41 {
            width: 100%;
        }

        #bb {
            margin-left: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="register">
        <script type="text/javascript">
            function WebForm_OnSubmit() {
                if (typeof (ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) {
                    $("#validation_dialog").dialog({
                        title: "Validation Error!",
                        modal: true,
                        resizable: false,
                        show: {
                            effect: "linear",
                            duration: "fast"
                        },
                        hide: {
                            effect: "explode",
                            duration: 1000
                        },


                    });
                    return false;
                }
                return true;
            }
        </script>

        <center>
           
        <div id="res">
            <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Join Social Proffesional Networking site" style="color: #663300"></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" style="color: #FFFFFF"></asp:Label>
            <br />
        </div>
            </center>
       
        <center>
          
                <table class="auto-style6" id="t1" runat="server" visible="true">
        <tr>
            <td class="auto-style7">First Name <span class="auto-style20">*</span></td>
            <td class="auto-style8">
                <asp:TextBox ID="Fnametxt" runat="server" Height="25px" Width="205px"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Fnametxt" Display="None" ErrorMessage="Name is Required" ValidationGroup="info"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Last Name <span class="auto-style20">*</span></td>
            <td class="auto-style8">
                <asp:TextBox ID="Lnametxt" runat="server" Height="25px" Width="205px"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Lnametxt" Display="None" ErrorMessage="please enter the your last name" ValidationGroup="info"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Email-address <span class="auto-style20">*</span></td>
            <td class="auto-style8">
                <asp:TextBox ID="Emailtxt" runat="server" Height="25px" TextMode="Email" Width="205px"></asp:TextBox>
            </td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22">Passwored <span class="auto-style20">*</span></td>
            <td class="auto-style23">
                <asp:TextBox ID="passtxt" runat="server" Height="25px" Width="205px" style="margin-bottom: 6px"></asp:TextBox>
            </td>
            <td class="auto-style24">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="passtxt" Display="None" ErrorMessage="Enter the Password" ValidationGroup="info"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style25">Repeat-Passwored <span class="auto-style20">*</span></td>
            <td class="auto-style26">
                <asp:TextBox ID="Rpass" runat="server" Height="25px" Width="205px"></asp:TextBox>
            </td>
            <td class="auto-style27">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Rpass" Display="None" ErrorMessage="Re enter same password" ValidationGroup="info"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="passtxt" ControlToValidate="Rpass" Display="None" ErrorMessage="Enter the correct password" ValidationGroup="info"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style38"></td>
            <td class="auto-style39">
                <br />
                <br />
                <asp:HiddenField ID="HiddenField1" runat="server"></asp:HiddenField>
&nbsp;<asp:Button ID="Button2" runat="server" Text="Continue" OnClick="Button2_Click"  Class="button" Height="30px" Width="116px" ValidationGroup="info" />
            </td>
            <td class="auto-style40"></td>
        </tr>
    </table>
            </center>
        <center>
               <asp:ScriptManager ID="script1" runat="server"></asp:ScriptManager>
        <asp:Panel ID="Panel3" runat="server">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
           <ContentTemplate>
    <table class="auto-style10" id="t2" runat="server" visible="false" >
          
        <tr>
            <td class="auto-style21">Country Region *</td>
            <td class="auto-style12">
                <asp:DropDownList ID="countrytxt" runat="server" Height="21px" Width="168px"  OnSelectedIndexChanged="countrytxt_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem>--Select Cuntry--</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"  ControlToValidate="countrytxt" Display="None" ErrorMessage="please select your country" ValidationGroup="info" InitialValue="--Select Cuntry--"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">State *</td>
            <td class="auto-style12">
                <asp:DropDownList ID="statetxt" runat="server" Height="19px"  Width="168px" OnSelectedIndexChanged="statetxt_SelectedIndexChanged" AutoPostBack="true">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="statetxt" Display="None" ErrorMessage="please select your state" ValidationGroup="info" InitialValue="--Select State--"></asp:RequiredFieldValidator>
                <asp:DropDownList ID="distic" runat="server" Height="19px" Width="168px">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">City/District *</td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="distic" Display="None" ErrorMessage="please select your distic" TabIndex="1" ValidationGroup="info" InitialValue="-- Select City--"></asp:RequiredFieldValidator>
                <br />
            </td>
              </tr>
                </table> 
               
         </ContentTemplate>
                </asp:UpdatePanel>

        </asp:Panel> 

            <center>
                <table class="auto-style41" id="bb" runat="server" visible="false" align="center">
                    <tr>
                        <td><asp:Button ID="Button3" runat="server" Height="40px" Text="Continue" Width="116px" OnClick="Button3_Click" Class="button" ValidationGroup="info"/></td>
                    </tr>
                </table>
           </center>
               
       </center>
        <center>
    <table class="auto-style13" id="t3" runat="server" visible="false" >
        <tr>
            <td class="auto-style28">Select you student or employee <span class="auto-style20">*</span></td>
            <td class="auto-style29">
                &nbsp;<asp:RadioButton ID="RadioButton1" runat="server" Text="student" GroupName="member" />
                <br />
                <asp:RadioButton ID="employeeRad" runat="server" Text="Employee" GroupName="member"/>
                
                <br />
            </td>
            <td class="auto-style30"></td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">
                &nbsp;<br />
                <asp:Button ID="Button4" runat="server" Height="30px" Text="Continue" Width="116px" OnClick="Button4_Click" Class="button" ValidationGroup="info"/>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
        </center>
        <center>
    <table class="auto-style16" id="t4" runat="server" visible="false">
        <tr>
            <td class="auto-style17">Universcity Name <span class="auto-style20">*</span></td>
            <td class="auto-style18">
                <asp:TextBox ID="Unitxt" runat="server" Height="25px" Width="205px" OnTextChanged="Unitxt_TextChanged" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Unitxt" Display="None" ErrorMessage="Select the Unverscity name" ValidationGroup="info"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">Programe Name <span class="auto-style20">*</span></td>
            <td class="auto-style32">
                <asp:TextBox ID="progtxt" runat="server" Height="25px" Width="205px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="progtxt" Display="None" ErrorMessage="Select the programe name" ValidationGroup="info"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style33"></td>
        </tr>
        <tr>
            <td class="auto-style17">Start year<span class="auto-style20"> *</span></td>
            <td class="auto-style18">
                <asp:DropDownList ID="starttxt" runat="server" Height="19px" Width="168px">
                    <asp:ListItem>start year---</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="starttxt" Display="None" ErrorMessage="Select the Start year" ValidationGroup="info" InitialValue="start year---"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">End year<span class="auto-style20">*</span></td>
            <td class="auto-style18">
                <asp:DropDownList ID="Endtxt" runat="server" Height="19px" Width="168px">
                    <asp:ListItem>End Year---</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="Endtxt" Display="None" ErrorMessage="Select the End year " ValidationGroup="info" InitialValue="End Year---"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18">
                <br />
&nbsp;<asp:Button ID="Button5" runat="server" Text="Register" OnClick="Button5_Click" Class="button" Height="31px" Width="115px" ValidationGroup="info"/>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
        </center>
        <center>
    <table class="auto-style19" id="t5" runat="server" visible="false">
        <tr>
            <td class="auto-style11">Company Name<span class="auto-style20"> *</span></td>
            <td class="auto-style34">
                <asp:TextBox ID="comtxt" runat="server" Height="25px" Width="205px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="comtxt" Display="None" ErrorMessage="Select the Company name" ValidationGroup="info"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35">Profession Type<span class="auto-style20"> *</span></td>
            <td class="auto-style36">
                <asp:DropDownList ID="proftxt" runat="server" Height="21px" Width="168px">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>job</asp:ListItem>
                    <asp:ListItem>Bussiness</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="proftxt" Display="None" ErrorMessage="Select the profession type" ValidationGroup="info" InitialValue="--Select--"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style37"></td>
        </tr>
        <tr>
            <td class="auto-style11">Join year<span class="auto-style20"> *</span></td>
            <td class="auto-style34">
                <asp:DropDownList ID="jointxt2" runat="server" Height="19px" Width="168px">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="jointxt2" Display="None" ErrorMessage="Select the join year" ValidationGroup="info" InitialValue="--Select--"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style34">
                &nbsp;<br />
&nbsp;<asp:Button ID="Button6" runat="server" Height="31px" Text="Register" Width="117px" OnClick="Button6_Click"  Class="button" ValidationGroup="info"/>
            &nbsp;
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
        </center>

        <center>
    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" ForeColor="Black"></asp:Label>
            <br />
            <div id="validation_dialog" style="display: none;background:Green;color:white">
            <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="info"  runat="server" />
                </div>
        </center>
    </div>

    <ajaxToolkit:PopupControlExtender ID="PopupControlExtender1" runat="server" TargetControlID="Unitxt" PopupControlID="Panel1" Position="Center" CommitProperty="value"></ajaxToolkit:PopupControlExtender>
    <asp:Panel ID="Panel1" runat="server" >
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
                <asp:RadioButtonList ID="RadioButtonList1"  runat="server" Height="195px" Visible="false" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Width="319px" AutoPostBack="True" Style="background-color: #FFCC00">
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
                <br />
            </ContentTemplate>
        </asp:UpdatePanel>
    </asp:Panel>
    <ajaxToolkit:PopupControlExtender ID="PopupControlExtender2" runat="server" TargetControlID="progtxt" PopupControlID="Panel2" Position="Center" CommitProperty="value"></ajaxToolkit:PopupControlExtender>
    <asp:Panel ID="Panel2" runat="server" >
        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
            <ContentTemplate>
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" Height="195px" Visible="false" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged" Width="319px" AutoPostBack="True" Style="background-color: #FFCC00">
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
</asp:Content>

