<%@ Page Title="" Language="C#" MasterPageFile="~/clients.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 109%;
            background-color: #990000;
            height: 74px;
        }
        .auto-style4 {
            width: 143px;
        }
        .auto-style5 {
            width: 812px;
        }
        .auto-style6 {
            color: #FFFFFF;
        }
        .pbg {
            border-radius:50%;
            border:1px solid black;
        }
        .l1 {
            color:blue;
            font-size:large;
            font-style:italic;
            margin-left:250px;
        }
        .l3 {
             color:blue;
            font-size:large;
            font-style:italic;
        }
        .l2 {
            width:300px;
            height:250px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table class="auto-style3">
        <tr>
            <td class="auto-style4">
                <asp:Image ID="Image6" runat="server" CssClass="pbg" Height="63px" Width="91px" />
            </td>
            <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="34px" Width="174px" AutoCompleteType="Disabled"></asp:TextBox>
                <ajaxToolkit:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server"  CompletionInterval="100" MinimumPrefixLength="1" ServiceMethod="SearchUser" TargetControlID="TextBox2"></ajaxToolkit:AutoCompleteExtender>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" Height="34px" OnClick="Button3_Click" style="color: #FFFFFF; margin-top: 0px; background-color: #FF0000" Text="search" Width="71px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server" Height="28px" Width="215px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" style="color: #3333CC"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Height="37px" style="color: #FFFFFF; background-color: #FF0000" Text="Send" Width="72px" OnClick="Button2_Click" />
            </td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style6">Friend</span>&nbsp;</td>
        </tr>
    </table>
    <br />
    <center>
    <asp:Repeater ID="Repeater1" runat="server"   >
          <ItemTemplate>
            <table>
                <tr>
                    <td style="background-color:red">
                        <asp:ImageButton ID="ImageButton2" runat="server"  Height="53px" CommandName="view" Width="81px" class="pbg" ImageUrl='<%# Eval("profile_pic") %>' OnClick="ImageButton2_Click1" />
                        <asp:Label ID="Label1" runat="server" class="l1" Text='<%# Eval("f_name")%>'></asp:Label> &nbsp;&nbsp; <asp:Label ID="Label2" CssClass="l3" runat="server" Text='<%# Eval("l_name") %>'></asp:Label>
                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("email_id") %>' ></asp:HiddenField></td>
                </tr>
           
                <tr>
                    <td>
                        <asp:Image ID="Image2" width="500px" hieght="50px" runat="server" CssClass="l2" ImageUrl='<%# Eval("post_image") %>'/>
                    </td>
                </tr>
                <tr>
                    <td style="background-color:green">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="30px"  width="50px" style="background-color:green" OnClick="ImageButton1_Click"  />
                    
                   </td>
                </tr>
           </table>
                </ItemTemplate> 
        <SeparatorTemplate>
            <br />
        </SeparatorTemplate>     
    </asp:Repeater>
                              

     </center>
                          

                    
    <asp:Label ID="Label4" runat="server"></asp:Label>   
    </asp:Content>

