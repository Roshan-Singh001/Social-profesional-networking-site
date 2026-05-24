<%@ Page Title="" Language="C#" MasterPageFile="~/clients.master" AutoEventWireup="true" CodeFile="Interview_prepration.aspx.cs" Inherits="Interview_prepration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
            background-color: #FFCC00;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table>
        <tr>
            <td><ul style="font:x-large">
                <li>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" style="font-size: x-large">Technical interview question set</asp:LinkButton></li>
                <li>
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" style="font-size: x-large">Programing Question practice</asp:LinkButton></li>
                <li>
                    <asp:LinkButton ID="LinkButton3" runat="server" style="font-size: x-large" OnClick="LinkButton3_Click">General Konowledge question</asp:LinkButton></li>
                <li>
                    <asp:LinkButton ID="LinkButton4" runat="server" style="font-size: x-large" OnClick="LinkButton4_Click"> Hr Interview Question practice</asp:LinkButton></li>
                </ul></td>
        </tr>
    </table>
    <center>
    &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="187px" Width="457px" style="border:1px solid red" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="Questions for partices">
                <ItemTemplate>
                    <table class="tt" >
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("qes_id") %>' style="font-size: large"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label2" runat="server" style="background-color: #996600;font-size:x-large" Text='<%# Eval("question") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;Ans:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                <asp:Label ID="Label3" runat="server" style="color: #0000FF; font-size: large;" Text='<%# Eval("answer") %>'></asp:Label>
                                &nbsp;</td>
                        </tr>
                    </table>
                    <br />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
        </center>
&nbsp;&nbsp;&nbsp;  

</asp:Content>

