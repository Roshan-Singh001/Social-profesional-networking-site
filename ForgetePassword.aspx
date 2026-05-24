<%@ Page Title="" Language="C#" MasterPageFile="~/USER.master" AutoEventWireup="true" CodeFile="ForgetePassword.aspx.cs" Inherits="ForgetePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style10 {
            width: 89%;
            height: 194px;
            margin-top: 3px;
        }
        .auto-style12 {
            height: 34px;
        }
        .auto-style13 {
            height: 35px;
        }
        .auto-style14 {
            color: #CC0000;
        }
        .button1 {
            color:white;
            background-color:blue;
            border-radius:5px;
        }
        .button1:hover {
            background-color:red;
        }
        #TextBox2 {
            border:1px solid #ffff;
            outline:none;
            color:#fff;
        }
        .auto-style15 {
            width: 90%;
        }
        .auto-style16 {
            width: 290px;
        }
        .forget {
    width:400px;
    height:278px;
    background-color:Green;
    color:red;
}
        .buto {
            color:white;
            background-color:blue;
            border-radius:20px;
        }
            .buto:hover {
                background-color: red;
            }
            #join {
    font-size:25px;
    color:white;
}
    #join:hover {
        color:red;
        font-size:xx-large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <center>
    <div class="forget">
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
        <asp:Label ID="Label1" runat="server" Text="First,let's find your account" Font-Size="X-Large" style="color: #800000"></asp:Label>
    <table class="auto-style10" id="t1" runat="server" visible="false" >
        <tr>
            <td class="auto-style12" align="left">Email-Id <span class="auto-style14">*</span></td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="288px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" Display="None" ErrorMessage="Please enter your email" ValidationGroup="info"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td align="left" class="auto-style11">&nbsp;
                <asp:Button ID="Button2" runat="server" Font-Size="Large"  Text="Cancel" class="button1" Height="34px" Width="117px"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Font-Size="Large" Height="33px"  Text="Find" Width="128px" class="button1" OnClick="Button3_Click" ValidationGroup="info" />
                <br />
            </td>
        </tr>
        </table>
        </center>
    <center>
    <table class="auto-style15" id="t2" runat="server" visible="false">
        <tr>
            <td class="auto-style16" align="left">New password *</td>
        </tr>
        <tr>
            <td class="auto-style16" align="left">
                <asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="253px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" Display="None" ErrorMessage="Re-enter the same password" ValidationGroup="info"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style16" align="left">Retype new password *</td>
        </tr>
        <tr>
            <td class="auto-style16" align="left">
                <asp:TextBox ID="TextBox4" runat="server" Height="26px" Width="253px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" Display="None" ErrorMessage="Enter the new password" ValidationGroup="info"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" Display="None" ErrorMessage="Re-type the new passwored" ValidationGroup="info"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style16" align="left">
                <br />
                <br />
                <asp:Button ID="Button4" runat="server" Height="35px" Text="Submit" Width="254px" OnClick="Button4_Click"  class="buto" ValidationGroup="info"/>
            </td>
        </tr>
    </table>
        <asp:Label ID="Label2" runat="server" ForeColor="#0033CC" Font-Size="13pt"></asp:Label>
        </center>
        <a href="Registration.aspx" id="join">You can join now</a>
          <div id="validation_dialog" style="display: none;background:Green;color:white">
            <asp:ValidationSummary ID="ValidationSummary1"  ValidationGroup="info"  runat="server"></asp:ValidationSummary>
        </div>
                </div>
    </center>
</asp:Content>

