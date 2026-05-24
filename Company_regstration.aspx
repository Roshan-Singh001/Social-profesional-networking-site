<%@ Page Title="" Language="C#" MasterPageFile="~/USER.master" AutoEventWireup="true" CodeFile="Company_regstration.aspx.cs" Inherits="Company_regstration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
            width: 36%;
            height: 134px;
        }
        .auto-style13 {
            width: 88%;
        }
        .auto-style14 {
            width: 1295px;
        }
        .auto-style15 {
            width: 88%;
        }
        .auto-style16 {
            height: 32px;
        }
        .company 
        {
            width:450px;
            height:450px;
            color:white;
            background:black;
            margin-left:300px;
            opacity:.8;

        }
        .text1 {
            border:1px solid green;
        }
        .auto-style17 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center style="width: 529px">
        <div class="company">
            <center>
    <asp:Label ID="Label2" runat="server" Font-Size="Larger" style="color: #FF0000"></asp:Label>
                <table class="auto-style13" style="text-align:left" id="c1" visible="false" runat="server">
                    <tr>
                        <td class="auto-style14">Company Name*:</td>
                    </tr>
                    <tr>
                        <td class="auto-style14">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="text1" Height="35px" Width="370px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter the company name" ValidationGroup="com" style="color: #FF0000"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">Eamail_Id *:</td>
                    </tr>
                    <tr>
                        <td class="auto-style14">
                            <asp:TextBox ID="TextBox3" runat="server" Height="35px" CssClass="text1" Width="375px" TextMode="Email"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter the email " ControlToValidate="TextBox3" ValidationGroup="com" style="color: #FF0000"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">Password *:</td>
                    </tr>
                    <tr>
                        <td class="auto-style14">
                            <asp:TextBox ID="TextBox4" runat="server" Height="35px" CssClass="text1" Width="373px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter the password" ControlToValidate="TextBox4" ValidationGroup="com" style="color: #FF0000"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">Conform Password: *:</td>
                    </tr>
                    <tr>
                        <td class="auto-style14">
                            <asp:TextBox ID="TextBox5" runat="server" Height="35px" CssClass="text1" Width="371px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="conform  password is requred" ControlToValidate="TextBox5" ValidationGroup="com" style="color: #FF0000"></asp:RequiredFieldValidator>
                        &nbsp;
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Enter the same password" ValidationGroup="com" style="color: #FF0000"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">
                            <asp:Button ID="Button2" runat="server" Height="43px" style="color: #FFFFFF; background-color: #0000FF; flex-align:center" Text="Continue" Width="158px" OnClick="Button2_Click" ValidationGroup="com" />
                        </td>
                    </tr>
                </table>
    
                <table class="auto-style15" style="text-align:left" id="c2" visible="false" runat="server">
                    <tr>
                        <td>Company Address:</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" CssClass="text1" Height="35px" Width="371px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter this field is requried" ControlToValidate="TextBox6" ValidationGroup="reg" style="color: #CC0000"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Company Website:</td>
                    </tr>
                    <tr>
                        <td class="auto-style16">
                            <asp:TextBox ID="TextBox7" runat="server" CssClass="text1" Height="35px" Width="371px"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>Start year:</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DropDownList ID="DropDownList1" CssClass="text1" runat="server" Height="35px" Width="174px">
                                <asp:ListItem>---Select---</asp:ListItem>
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
                                <asp:ListItem Value="2">2012</asp:ListItem>
                                <asp:ListItem>2013</asp:ListItem>
                                <asp:ListItem>2014</asp:ListItem>
                                <asp:ListItem>2015</asp:ListItem>
                                <asp:ListItem>2016</asp:ListItem>
                                <asp:ListItem>2017</asp:ListItem>
                                <asp:ListItem>2018</asp:ListItem>
                                <asp:ListItem>2019</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Select the start year" ControlToValidate="DropDownList1" style="color: #FF0000" ValidationGroup="reg"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17"></td>
                    </tr>
                    <tr>
                        <td>COMPANY tITLE:</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server" CssClass="text1"  Height="35px" Width="371px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox8" ErrorMessage="enter the company title" style="color: #FF0000" ValidationGroup="reg"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button3" runat="server" Height="39px" style="color: #FFFFFF; background-color: #0033CC" Text="Register" Width="134px" OnClick="Button3_Click" ValidationGroup="reg" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
    <asp:Label ID="Label1" runat="server" ForeColor="#000099" BorderStyle="Solid" style="color: #0033CC; background-color: #FF0000"></asp:Label>
                </center>
            </div>
        </center>
</asp:Content>

