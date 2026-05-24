<%@ Page Title="" Language="C#" MasterPageFile="~/comany.master" AutoEventWireup="true" CodeFile="company_profile.aspx.cs" Inherits="company_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

         .picmain {
             border-radius:50%;
            
         }
         *{
margin:0px;
padding:0px;
font-family:sans-serif;
}
*,::after,::before{text-shadow:none!important;box-shadow:none!important}*,::after,::before{box-sizing:border-box}
        .auto-style3 {
            color: #CC0000;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <asp:Image ID="Image6" runat="server" Height="119px" class="picmain" Width="148px" BorderColor="Red" BorderStyle="Solid" ImageUrl="~/d.png" />
            <span class="auto-style28">
    <br />
                <asp:Label ID="Label2" runat="server" ForeColor="Blue" style="color: #990000"></asp:Label>
                <br />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <br />
    <asp:FileUpload ID="FileUpload1" runat="server" Height="16px" Width="224px" /><br />
                <br />
            <asp:Button ID="Button14" runat="server" class="btn btn-danger" OnClick="Button14_Click" style="color: #FFFFFF; background-color: #0000FF" Text="Change" ValidationGroup="profile" />
            <br />
            </span>
        </center>
    <div style="background-color:white; width:630px;height:auto;">
    Abouts Company<br />
    Discription<span class="auto-style3">*</span>&nbsp;&nbsp;
    <br />
    <asp:TextBox ID="TextBox1" runat="server" Height="146px" Width="602px"></asp:TextBox>
    <br />
    Spacialties (Add a Maximum of 20 spacialties)<br />
    <br />
    <asp:TextBox ID="TextBox2" runat="server" Height="29px" Width="204px" ValidationGroup="skills"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button15" runat="server" Height="28px" style="color: #FFFFFF; background-color: #0000FF" Text="+Add" Width="73px" OnClick="Button15_Click1" ValidationGroup="skills" />
    <br />
    <asp:Label ID="Label3" runat="server" style="color: #FFFFFF; background-color: #0000FF"></asp:Label>
    <br />
    <br />
    <br />
    website URL<span class="auto-style3"> *</span><br />
    &nbsp;

    <asp:TextBox ID="TextBox3" runat="server" Height="36px" Width="183px"></asp:TextBox>
    <br />

    <br />
    Company Size<span class="auto-style3">*</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Industry<span class="auto-style3"> *</span><br />
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="38px" Width="202px">
        <asp:ListItem>Large</asp:ListItem>
        <asp:ListItem>Medium</asp:ListItem>
        <asp:ListItem>Low</asp:ListItem>
        <asp:ListItem>Startup</asp:ListItem>
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList2" runat="server" Height="38px" Width="202px">
        <asp:ListItem>--select--</asp:ListItem>
        <asp:ListItem>Information Technology</asp:ListItem>
        <asp:ListItem Value="Electrical "></asp:ListItem>
        <asp:ListItem>Agraicalture</asp:ListItem>
        <asp:ListItem>Transport</asp:ListItem>
    </asp:DropDownList>
    &nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:Button ID="Button16" runat="server" Height="32px" OnClick="Button16_Click" style="color: #FFFFFF; background-color: #FF0000" Text="Button" Width="87px" />
    <br />
        </div>
</asp:Content>

