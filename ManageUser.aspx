<%@ Page Title="" Language="C#" MasterPageFile="~/adm.master" AutoEventWireup="true" CodeFile="ManageUser.aspx.cs" Inherits="ManageUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style13 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
     <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <center>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="230px" style="text-align: center" Width="395px" GridLines="Vertical"  OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="False">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:TemplateField HeaderText="Member_Id">
                <HeaderTemplate>
                    <asp:Label ID="Label7" runat="server" Text="Member Id"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" style="text-align: center" Text='<%# Eval("R_id") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User_name">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" style="text-align: center" Text='<%# Eval("f_name") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User_type">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("working_type") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Bind("Email") %>'></asp:HiddenField>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Profile_pic">
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" Height="55px" Width="103px" ImageUrl='<%# Eval("profile_pic") %>' />
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
           
            <asp:ButtonField ButtonType="Link" Text="Block" CommandName="block" />
            <asp:ButtonField ButtonType="Link"  Text="view profile" CommandName="view" />
            <asp:ButtonField ButtonType="Link" Text="Unblock" CommandName="unblock" />
          <%--  <asp:TemplateField HeaderText="Control_user">
                <ItemTemplate>
                    <table class="auto-style13">
                        <tr>
                            <td>
                                <asp:LinkButton ID="LinkButton1" CommandName="block" runat="server">Block user</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Button2" runat="server" CommandName="view" style="color: #FFFFFF; background-color: #0000CC" Text="ViewProfile" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>--%>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="Black" HorizontalAlign="Center" BackColor="#999999" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
        </center>
</asp:Content>

