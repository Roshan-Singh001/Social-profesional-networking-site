<%@ Page Title="" Language="C#" MasterPageFile="~/clients.master" AutoEventWireup="true" CodeFile="notification.aspx.cs" Inherits="notification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
        <ItemTemplate>
            <table style="border:1px solid green;background-color:gray;width:500px" >
                <tr >
                    <td style="border:1px solid green"> <asp:Image ID="Image1" runat="server" style="border-radius:50px; border:1px solid black"  Width="80px" Height="55px" ImageUrl='<%# Eval("profile_pic") %>' /></td><td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("message") %>' style="font-size:large" ></asp:Label> <asp:HiddenField ID="HiddenField1" runat="server" value='<%# Eval("n_id") %>'/>
                    </td><td style="border:1px solid green">
                        <asp:Button ID="Button1" runat="server" Text="Delete" BackColor="blue" CommandName="delete" ForeColor="White" />
                                                       </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:Repeater>
     
</asp:Content>

