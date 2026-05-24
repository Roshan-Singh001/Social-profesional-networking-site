<%@ Page Title="" Language="C#" MasterPageFile="~/clients.master" AutoEventWireup="true" CodeFile="Friend_Request.aspx.cs" Inherits="Friend_Request" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .data {
            background-color:black;
            opacity:.8;
            margin-top:20px;

        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <center>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" class="data" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
        <HeaderTemplate>
            Pepole may you know
        </HeaderTemplate>
        <ItemTemplate>
            <table class="auto-style3">
                <tr>
                    <td>
                        <asp:Image ID="Image6" runat="server" style="border:2px solid green" Height="120px" Width="164px" ImageUrl='<%# Eval("profile_pic") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("f_name") %>'></asp:Label>
                        &nbsp;&nbsp;
                        <asp:HiddenField ID="HiddenField1" runat="server" value='<%# Eval("Email") %>'/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button2" runat="server" CommandName="add" Height="29px" style="color: #FFFFFF; background-color: #0000FF" Text="+Add Friend"  Width="159px" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
        </center>
</asp:Content>

