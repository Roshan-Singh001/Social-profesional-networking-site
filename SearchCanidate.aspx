<%@ Page Title="" Language="C#" MasterPageFile="~/comany.master" AutoEventWireup="true" CodeFile="SearchCanidate.aspx.cs" Inherits="SearchCanidate" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .tt {
            color:saddlebrown;
            font-size:large;
        }
        .g {
            width:700px;
            height:350px;
            margin-top:15%;
            overflow:scroll;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-size: large; width: 1126px; height: 59px;">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <table style="position:absolute; top: 130px; left: 235px; width: 891px; height: 62px;"><tr><td style="background-color: #996600">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter the Profession Keyword&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="203px" Font-Size="Large" ForeColor="Blue" ></asp:TextBox>
        <ajaxToolkit:AutoCompleteExtender ID="TextBox1_AutoCompleteExtender" runat="server" BehaviorID="TextBox1_AutoCompleteExtender" ServiceMethod="SearchUser" TargetControlID="TextBox1" MinimumPrefixLength="1" CompletionInterval="10" >
        </ajaxToolkit:AutoCompleteExtender>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" style="color: #FFFFFF; background-color: #3333CC" Text="Search" OnClick="Button1_Click" Height="35px" Width="89px" />
            </td></tr></table>
    </p>
  <center>
      <div class="g">
        <asp:Repeater ID="Repeater1" runat="server">
             
            <ItemTemplate >
               <table style="border:2px solid black;background-color:yellow" >
                   <tr>
                       <td>
                             <asp:Label ID="Label1" runat="server" Style="color:blue;font-size:x-large" Text='<%# Eval("f_name")+" "+ Eval("l_name")%>'></asp:Label>

                       </td>
                   </tr>
                   <tr><td class="tt">Location</td><td><asp:Label ID="Label4" runat="server" Text='<%# Eval("city")+"in"+Eval("Stat") %>'></asp:Label><td>   <asp:Image ID="Image1" runat="server" Width="150px" style="border:1px solid black" Height="100px" ImageUrl='<%# Eval("profile_pic") %>' /></td></tr>
                   <tr>
                       <td class="tt">Current:</td><td> <asp:Label ID="Label5" runat="server" Text='<%# Eval("title") %>'></asp:Label>   <asp:Label ID="Label2" runat="server" Text='<%# Eval("c_name") %>'></asp:Label> </td>
                         <td></td> 
                   </tr>
                   <tr>
                       <td class="tt">Education:</td><td><asp:Label ID="Label6" runat="server" Text='<%# Eval("Degree") %>'></asp:Label>&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text='<%# Eval("University") %>'></asp:Label>&nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Text='<%# Eval("start_year") %>'></asp:Label>-<asp:Label ID="Label10" runat="server" Text='<%# Eval("end_year") %>'></asp:Label></td>
                   </tr>
                   <tr>
                   <td class="tt">Education Field:</td><td> <asp:Label ID="Label8" runat="server" Text='<%# Eval("Study_type")%>'></asp:Label></td>
                   </tr>
                   <tr>
                       <td class="tt">Contact:</td><td>
                           <asp:Label ID="Label11" runat="server" Text='<%# Eval("Email") %>'></asp:Label></td>
                   </tr>
               </table>
                 
            </ItemTemplate>
            <SeparatorTemplate>
                <br />
            </SeparatorTemplate>
        </asp:Repeater>
          </div>
      </center>
</asp:Content>

