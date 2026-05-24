<%@ Page Title="" Language="C#" MasterPageFile="~/clients.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .auto-style3 {
            width: 32%;
        }
        .auto-style4 {
            width: 32%;
        }
        .sub {
          
            color:white;
            background-color:red;
            border-radius:20px;
        }
           .change {
    width:400px;
    height:305px;
    margin-top:50px;
    background-color:blue;
    opacity:.8;
    color:white;
}
        .text {
            font-size:x-large
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
   <div class="change">
       <center>
           <asp:Label ID="Label1" runat="server" style="color: #FF3300; background-color: #000000"></asp:Label>
       <table  class="auto-style3"  style="text-align:left"  id="b1" height="131px" Runat="server">
           <tr>
               <td>Old password:</td>
           </tr>
           <tr>
               <td>
                   <asp:TextBox ID="TextBox2" runat="server" Height="31px" Width="357px" class="text" TextMode="Password"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter the old password" ValidationGroup="change" style="color: #FF3300"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Button ID="Button2" runat="server" Height="38px" style="color: #FFFFFF; background-color: #FF0000" Text="Cancel" Width="100px" OnClick="Button2_Click" ValidationGroup="change" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Button ID="Button3" runat="server" Height="35px" style="color: #FFFFFF; background-color: #FF0000" Text="Find" Width="104px" OnClick="Button3_Click" ValidationGroup="change" />
               </td>
           </tr>
       </table>
           </center>
       <br />
       <table class="auto-style4" style="text-align:left" id="b2" runat="server" visble="false">
           <tr>
               <td>New Password:</td>
           </tr>
           <tr>
               <td>
                   <asp:TextBox ID="TextBox3" runat="server" Height="31px" class="text" Width="357px" TextMode="Password"></asp:TextBox>
                   <br />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter the new password" ValidationGroup="new" style="color: #FF3300"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td>Confirm password:</td>
           </tr>
           <tr>
               <td>
                   <asp:TextBox ID="TextBox4" runat="server" Height="31px" Width="356px" class="text" TextMode="Password"></asp:TextBox>
                   <br />
                   <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox3" ErrorMessage="Enter the same  password" ValidationGroup="new" style="color: #FF3300"></asp:CompareValidator>
               </td>
           </tr>
           <tr>
               <td>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Button ID="Button4" runat="server" Height="35px" Text="Submit" Width="255px" class="sub" OnClick="Button4_Click1" ValidationGroup="new"/>
               </td>
           </tr>
       </table>
   </div>
        </center>
</asp:Content>

