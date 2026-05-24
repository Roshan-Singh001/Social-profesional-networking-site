<%@ Page Title="" Language="C#" MasterPageFile="~/comany.master" AutoEventWireup="true" CodeFile="download_resume.aspx.cs" Inherits="download_resume" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
             .modalBackground
    {
        background-color: Black;
        filter: alpha(opacity=40);
        opacity: 0.4;
    }
        .l1 {
            color:blue;
        }
    .modalPopup
    {
        background-color: #FFFFFF;
        width: 300px;
        border: 3px solid #0DA9D0;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    
        &nbsp;<br />
   
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView2_RowCommand" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            
            <Columns>
                <asp:TemplateField HeaderText="Profile pic">
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" Height="63px" Width="130px" ImageUrl='<%# Eval("profile_pic") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Job Info">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("company_name") %>'></asp:Label>
                        <br />
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("j_title") %>'></asp:Label>
                        <br />
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("location") %>'></asp:Label>
                        <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("job_id") %>'/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:ButtonField Text="View Job" CommandName="view" />
                <asp:ButtonField Text="All job </br>appled Canidate" CommandName="canidate" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
       
    <center>
        <br />     
        <div id="grid" visible="false" runat="server">
        <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" Height="236px" Width="576px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
        <Columns>
            <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Full_name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email Id">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("email_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mobile Number">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("ph_number")  %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="resume" HeaderText="Resume(pdf)"  Text="view and dowanload" />
        </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
                </div>
    </center>
   
    <br />

</asp:Content>

