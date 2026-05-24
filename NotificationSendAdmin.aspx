<%@ Page Title="" Language="C#" MasterPageFile="~/adm.master" AutoEventWireup="true" CodeFile="NotificationSendAdmin.aspx.cs" Inherits="NotificationSendAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style13 {
            width: 18%;
            height: 59px;
        }
        .auto-style14 {
            width: 41%;
            background-color: #3366FF;
        }
        .auto-style15 {
            color: #CC0000;
        }
        .auto-style16 {
            color: #FF0000;
        }
        .auto-style17 {
            width: 42%;
        }
        .newStyle1 {
            background-color: #6600FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style13">
        <tr>
            <td><ul>
                <li>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Send Notification Single user</asp:LinkButton>
                </li>
                <li>
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Send Notification all user</asp:LinkButton>
                </li>
                </ul></td>
        </tr>
        
    </table>
    <center>
    <table class="auto-style14" style="text-align:left" id="n1" runat="server" visible="false"> 
        <tr>
            <td>User Email_Id <span class="auto-style15">*</span></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="39px" Width="284px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Message <span class="auto-style16">*</span></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="131px" Width="362px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="26px" style="color: #FFFFFF; background-color: #FF0000" Text="Send" Width="83px" OnClick="Button1_Click" />
                &nbsp;</td>
        </tr>
    </table>
        </center>
    <br />
    <center>
    <table class="auto-style17" style="text-align:left; background-color: #3366FF;" id="n2" runat="server" visible="false">
        <tr>
            <td>Message<span class="auto-style15"> *</span>&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="139px" Width="401px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Height="28px" style="color: #FFCCCC; background-color: #CC0000" Text="Send" Width="74px" OnClick="Button2_Click" />
                &nbsp;</td>
        </tr>
    </table>
        <br />
        <asp:Label ID="Label2" runat="server"></asp:Label>
        </center>
</asp:Content>

