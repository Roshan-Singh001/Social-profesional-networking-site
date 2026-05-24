<%@ Page Title="" Language="C#" MasterPageFile="~/USER.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .hl {
            font-size: 17px;
            margin-left: 5px;
            color: white;
        }

            .hl:hover {
                color: red;
                font-size: x-large;
            }

        .login {
            width: 373px;
            height: 458px;
            background-color: rgb(0,0,0,.5);
            position: absolute;
            margin-left: 5px;
            margin-top: 0%;
            color: red;
            top: 150px;
            left: 899px;
            margin-bottom: 0px;
        }

        .do {
            width: 100px;
            height: 100px;
            border-radius: 50px;
            position: absolute;
            top: -50px;
            left: 35%;
        }

        .tx1 {
            padding: 5px;
            border: none;
            margin: 10px;
            border-bottom: 1px solid #ffff;
            background: transparent;
            outline: none;
            color: #fff;
            width: 80%;
        }

        h1 {
            margin-left: 30%;
            margin-top: 20%;
        }

        .tx2 {
            padding: 5px;
            border: none;
            margin: 10px;
            font-size: 30px;
            border-bottom: 1px solid #ffff;
            background: transparent;
            outline: none;
            color: #fff;
            width: 80%;
        }

        .b1 {
            margin-left: 10px;
            background: red;
            color: blue;
            border-radius: 20px;
        }

            .b1:hover {
                cursor: pointer;
                background: yellow;
                color: red;
            }

        .login p {
            margin-left: 10px;
            font-size: 15px;
            font-weight: bold;
        }

        #HyperLink1, #HyperLink3 {
            margin-left: 10px;
        }

            #HyperLink1, #HyperLink3:hover {
                cursor: pointer;
                margin-left: 10px;
                font-size: 17px;
                color: red;
            }

        .pa {
            position: absolute;
            margin-right: 20px;
            top: 286px;
            left: 260px;
            width: 31px;
        }
    </style>
    <script>
        function show() {
            if (document.getElementById("pas2").type == "password") {
                document.getElementById("pas2").type = "text";
            }
            else {
                document.getElementById("pas2").type = "password";
            }
        }
        var btn = document.getElementById("shtext");
        btn.addEventListener("click", show);
   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="login">
        <script type="text/javascript">
            function WebForm_OnSubmit() {
                if (typeof (ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) {
                    $("#validation_dialog").dialog({
                        title: "Validation Error!",
                        modal: true,
                        resizable: false,
                        show: {
                            effect: "linear",
                            duration: "fast"
                        },
                        hide: {
                            effect: "explode",
                            duration: 1000
                        },


                    });
                    return false;
                }
                return true;
            }
           
        </script>

        <asp:Image ID="Image2" runat="server" ImageUrl="~/d.png" class="do" />
        <div>
            <h1>Login here</h1>
&nbsp;<p>Username</p>
            <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="274px" class="tx1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="None" ErrorMessage="Enter the email_id"></asp:RequiredFieldValidator>
            <p>Password</p>
            <asp:TextBox ID="pas2" runat="server" type="password" Height="16px" Width="274px" class="tx2"></asp:TextBox>
            &nbsp;  
            <asp:Image ID="shtext" runat="server" Height="37px" ImageUrl="~/sh1.png" class="pa" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pas2" Display="None" ErrorMessage="Enter your password"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" Height="34px" Width="274px" class="b1" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Registration_user.aspx" CssClass="hl">you can register here </asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ForgetePassword.aspx" CssClass="hl">Forget Password</asp:HyperLink>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Company_regstration.aspx">Company Registration here</asp:HyperLink>
            <br />
            &nbsp;      
            <div id="validation_dialog" style="display: none; background: Green; color: white">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </div>
            <br />
            <br />

        </div>
    </div>
   
</asp:Content>

