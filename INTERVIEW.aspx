<%@ Page Title="" Language="C#" MasterPageFile="~/comany.master" AutoEventWireup="true" CodeFile="INTERVIEW.aspx.cs" Inherits="INTERVIEW" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 56%;
        }
        .auto-style5 {
            color: #FF0000;
        width: 1286px;
            background-color: #3333FF;
        }
        .auto-style6 {
            color: #CC0000;
        }
    .auto-style7 {
            width: 1286px;
            background-color: #3333FF;
        }
    .auto-style8 {
        color: #CC0000;
        width: 1286px;
            background-color: #3333FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   
    <table class="auto-style4"  style="text-align:left;position:absolute; top: 164px; left: 305px; background-color: #993300;">
        <tr>
            <td class="auto-style5">Add Question for Interview prepration :-</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;&nbsp;
                <br />
                <span class="auto-style6">Question:&nbsp;</span></td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox1" runat="server" Height="74px" Width="615px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Answer:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Question Type :&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" Height="44px" Width="176px">
                    <asp:ListItem>Select Question type</asp:ListItem>
                    <asp:ListItem>Technical Interview Question</asp:ListItem>
                    <asp:ListItem>programing skills Question</asp:ListItem>
                    <asp:ListItem>General knowledge Question</asp:ListItem>
                    <asp:ListItem>HR Interview Question</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox2" runat="server" Height="142px" Width="620px"></asp:TextBox>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="32px" style="color: #FFFFFF; background-color: #CC0000" Text="Submit" Width="78px" OnClick="Button1_Click" />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" style="color: #FFFFFF"></asp:Label>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

