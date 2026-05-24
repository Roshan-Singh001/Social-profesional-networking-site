<%@ Page Title="" Language="C#" MasterPageFile="~/clients.master" AutoEventWireup="true" CodeFile="search_company.aspx.cs" Inherits="search_company" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .Data1 {
            margin-top:80px;
            margin-left:200px;
            width: 1042px;
        }
        .auto-style3 {
            width: 95%;
            height: 184px;
            background-color: #FFFF66;
        }
        .auto-style5 {
            height: 141px;
            width: 292px;
        }
        .auto-style7 {
        }
        .auto-style9 {
            width: 152px;
            height: 141px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Height="46px" Width="443px" AutoCompleteType="Disabled" placeholder="Search Company (industry)" ></asp:TextBox>
        <ajaxToolkit:AutoCompleteExtender ID="TextBox2_AutoCompleteExtender" runat="server" BehaviorID="TextBox2_AutoCompleteExtender" DelimiterCharacters=""  ServiceMethod="SearchUser" TargetControlID="TextBox2" MinimumPrefixLength="1" CompletionInterval="100" > 
        </ajaxToolkit:AutoCompleteExtender>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="42px" style="color: #FFFFFF; background-color: #FF0000" Text="Search" Width="82px" OnClick="Button2_Click" />
    </p>
     <center>
    <div class="Data1">
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" RepeatDirection="Horizontal" style="background-color:white; margin-right: 0px; margin-left: 0px;" Width="16px" OnItemCommand="DataList1_ItemCommand" Height="472px">
            <ItemTemplate>
                <table class="auto-style3" border="1">
                    <tr>
                        <td class="auto-style9">
                            <asp:Image ID="Image6" runat="server" Height="97px" Width="122px" ImageUrl='<%# Eval("profile_pic") %>'/>
                        </td>
                        <td class="auto-style5">
                            &nbsp;<asp:Label ID="Label1" runat="server" style="font-size: x-large" Text='<%# Eval("c_name") %>' Font-Size="Larger"></asp:Label>
                            <br />
                            &nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("c_address") %>'></asp:Label>
                            <asp:HiddenField ID="HiddenField1" runat="server" Value ='<%# Eval("email_id") %>' />
                            <br />
&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Eval("industry") %>'></asp:Label>
                        </td>
                    </tr>
             
                    <tr>
                        <td class="auto-style7" colspan="2">
                            <asp:Button ID="Button1" runat="server" Text="View Company" Height="35px" Width="512px" CommandName="view" style="color: #FFFFFF; font-size: large; background-color: #FF5050" /></td>
                    </tr>
                </table>
            </ItemTemplate>
            <SeparatorTemplate>
              &nbsp;
            </SeparatorTemplate>
        </asp:DataList>
    </div>
    </center>
</asp:Content>

