<%@ Page Title="" Language="C#" MasterPageFile="~/comany.master" AutoEventWireup="true" CodeFile="Add_job.aspx.cs" Inherits="Add_job" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        width: 63%;
        height: 763px;
        background-color: #FFCC00;
    }
    .auto-style4 {
            width: 311px;
        }
    .auto-style5 {
        width: 311px;
        height: 92px;
    }
    .auto-style6 {
        height: 92px;
    }
    .auto-style7 {
        color: #FF0000;
    }
        .auto-style8 {
            width: 311px;
            height: 41px;
        }
        .auto-style9 {
            height: 41px;
        }
        .auto-style10 {
            color: #CC0000;
        }
    .auto-style11 {
        width: 311px;
        height: 10px;
    }
    .auto-style12 {
        height: 10px;
    }
        .auto-style13 {
            width: 311px;
            height: 31px;
        }
        .auto-style14 {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <center>
    <div>

        <table class="auto-style3">
            <tr>
                <td class="auto-style4"><span class="auto-style7">*</span> Job Title/Designation</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="27px" Width="362px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter the job title" ForeColor="Red" ValidationGroup="add"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><span class="auto-style7">*</span>Job Description</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="58px" Width="363px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter the job Description" ForeColor="#CC0000" ValidationGroup="add"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"><span class="auto-style7">*</span>Work Experience</td>
                <td class="auto-style14">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="19px" Width="90px" ValidationGroup="add">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp; to&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="26px" Width="73px" ValidationGroup="add">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><span class="auto-style7">*</span>Annual CTC</td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="149px" ValidationGroup="add">
                        <asp:ListItem>Rs.</asp:ListItem>
                        <asp:ListItem>3000</asp:ListItem>
                        <asp:ListItem Value="5000">5000</asp:ListItem>
                        <asp:ListItem>7000</asp:ListItem>
                        <asp:ListItem>9000</asp:ListItem>
                        <asp:ListItem>11000</asp:ListItem>
                        <asp:ListItem>13000</asp:ListItem>
                        <asp:ListItem>15000</asp:ListItem>
                        <asp:ListItem>17000</asp:ListItem>
                        <asp:ListItem>19000</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList4" runat="server" Height="18px" style="margin-left: 0px" Width="142px" ValidationGroup="add">
                        <asp:ListItem Value="Rs."></asp:ListItem>
                        <asp:ListItem>4000</asp:ListItem>
                        <asp:ListItem>6000</asp:ListItem>
                        <asp:ListItem>8000</asp:ListItem>
                        <asp:ListItem>10000</asp:ListItem>
                        <asp:ListItem>12000</asp:ListItem>
                        <asp:ListItem>14000</asp:ListItem>
                        <asp:ListItem>16000</asp:ListItem>
                        <asp:ListItem>18000</asp:ListItem>
                        <asp:ListItem>20000</asp:ListItem>
                        <asp:ListItem>22000</asp:ListItem>
                        <asp:ListItem>24000</asp:ListItem>
                        <asp:ListItem>26000</asp:ListItem>
                        <asp:ListItem>28000</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Number of Vacancies</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="22px" Width="113px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter the Number of vacancies" ForeColor="Red" ValidationGroup="add"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><span class="auto-style7">*</span>Location of Job</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="27px" Width="362px" style="margin-bottom: 0px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Job  location is requierd" ForeColor="Red" ValidationGroup="add"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><span class="auto-style7">*</span>Industry </td>
                <td>
                    <asp:DropDownList ID="DropDownList5" runat="server" Height="28px" Width="363px" ValidationGroup="add">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><span class="auto-style7">*</span>Functional Area</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Height="27px" Width="362px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter the functional Area" ForeColor="#CC0000" ValidationGroup="add"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><span class="auto-style7">*</span>Job Role</td>
                <td style="font-weight: 700">
                    <asp:TextBox ID="TextBox6" runat="server" Height="27px" Width="362px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter the Job Role" ForeColor="#CC0000" ValidationGroup="add"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><span class="auto-style7">*</span>Company Name</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Height="27px" Width="362px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter the company Name" ForeColor="Red" ValidationGroup="add"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><span class="auto-style7">*</span>Specify Qualification</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Height="77px" Width="355px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="Enter the qualification" ForeColor="#CC0000" ValidationGroup="add"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><span class="auto-style7">*</span>Canidate profile</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox9" runat="server" Height="69px" Width="367px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" ErrorMessage="Canidate profile required" ForeColor="Red" ValidationGroup="add"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">HR Name <span class="auto-style10">*</span></td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox10" runat="server" Height="28px" Width="357px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox10" ErrorMessage="Enter the HR name" ForeColor="Red" ValidationGroup="add"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12">
                    <asp:Button ID="Button1" runat="server" Height="37px" OnClick="Button1_Click" style="color: #FFFFFF; background-color: #0033CC" Text="Post Job" Width="154px" ValidationGroup="add" />
                    <br />
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
        </table>

    </div>
        </center>
</asp:Content>

