<%@ Page Title="" Language="C#" MasterPageFile="~/adm.master" AutoEventWireup="true" CodeFile="Manage_Company.aspx.cs" Inherits="Manage_Company" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" Width="787px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="Registration_ID">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("CR_ID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Employer Name/Company">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("c_name") %>'></asp:Label>
                    <asp:HiddenField ID="HiddenField1" runat="server" value='<%# Eval("c_email_id") %>'/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Logo pic">
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" Height="95px" Width="124px" ImageUrl='<%# Eval("profile_pic") %>'/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User_Type">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("user_type") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:ButtonField Text="Block" CommandName="block"/>
            <asp:ButtonField Text="UnBlock" CommandName="unblock"/>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
</center>
</asp:Content>

