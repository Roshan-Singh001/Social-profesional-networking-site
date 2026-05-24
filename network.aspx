<%@ Page Title="" Language="C#" MasterPageFile="~/clients.master" AutoEventWireup="true" CodeFile="network.aspx.cs" Inherits="network" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .auto-style5 {
            width: 47%;
            height: 105px;
            margin-bottom: 3px;
        }
        .auto-style6 {
            height: 181px;
        }
        .a1 {
            position:absolute;
            width:200px;
            height:40px;
        }
        .a2 {
            position:absolute;
            top: 37px;
            left: 357px;
            height: 48px;
            width: 53px;
        }
        .a3 {
            position:absolute;
        }
        .auto-style7 {
            height: 85px;
        }
    .auto-style8 {
        width: 100%;
        background-color: #CCFF33;
    }
        .auto-style9 {
            background-color: #CCFF99;
        }
        .ig {
             width:150px;
             height:100px;
        }
        .l1 {
            margin-left:300px;
            width:auto;
        }
        .l2 {
            margin-left:350px;
            background-color:white;
            color:black;
        }
        .ir {
            margin-left:300px;
        }
        .ch {
            width:200px;
            height:417px;
            position:absolute;
            top: 109px;
            left: 25px;
            margin-top: 21px;
            overflow:scroll;
        }
    </style>
     <script>
         $("#text1").emojioneArea({
             pickerPosition: "bottom"
         })
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
     <center>
        
    <div style="height: 400px; width: 500px; overflow:scroll;background-color:black;opacity:.6;margin-top:40px;">
       
                    <asp:Repeater ID="Repeater1" runat="server" >
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td> <asp:Image ID="Image1" runat="server" width="65px" Height="50px" ImageUrl='<%# Eval("profile_pic") %>' style="border-radius:50%;border:1px solid black"> </asp:Image> <asp:Label ID="Label1" runat="server" Text='<%# Eval("chat") %>' style="border-radius:10px; font-size:large" BackColor="white" CssClass="l1"></asp:Label></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                        <SeparatorTemplate>
                            <br />
                        </SeparatorTemplate>
                    </asp:Repeater>
               </div>
            <table border="1" class="auto-style5" style="position:absolute; top: 531px; left: 294px;" >
            <tr align="left">
                <td class="auto-style7">
                    <asp:TextBox ID="mes" runat="server" style="margin-top: 0px; top: 31px; left: 19px; height: 51px;" Width="297px"  class="a1"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton2" runat="server" class="a2" BackColor="#CC0000" BorderColor="#3333FF" ImageUrl="~/r.png"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" style="color: #FFFFFF; background-color: #6600FF; top: 21px; left: 444px; width: 82px; margin-top: 21px; height: 40px;" Text="Send" class="a3" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
    </center>
    <div class="ch" >
         <asp:Repeater ID="Repeater2" runat="server" >
         <ItemTemplate>
             <table>
                 <tr>
                     <td>
                         <asp:Image ID="Image2" runat="server" width="65px" Height="50px" ImageUrl='<%# Eval("profile_pic") %>' style="border-radius:50%;border:1px solid black"/></td>
                      <td>   <asp:Button ID="Button1" runat="server" Text='<%# Eval("friend_email") %>' OnClick="Button1_Click" /></td>
                 </tr>
             </table>
         </ItemTemplate>
     </asp:Repeater>
        </div>
     <br />
     <br />
     
</asp:Content>

