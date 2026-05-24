<%@ Page Title="" Language="C#" MasterPageFile="~/USER.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@300;400;500;600&family=Fraunces:wght@300;600&display=swap" rel="stylesheet" />
    <style>
        /* ── Page layout ── */
        /* ── Page layout ── */
        .login-page {
            min-height: calc(100vh - 68px - 40px);
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 40px 16px 60px;
        }

        /* ── Card ── */
        .login-card {
            width: 100%;
            max-width: 400px;
            background: #ffffff;
            border: 1px solid #e2e6ed;
            border-radius: 20px;
            padding: 44px 40px 36px;
            position: relative;
            box-shadow: 0 8px 32px rgba(24, 95, 165, 0.10), 0 1px 4px rgba(0,0,0,0.06);
        }

        /* ── Avatar ── */
        .avatar-ring {
            width: 72px;
            height: 72px;
            border-radius: 50%;
            border: 2px solid rgba(24, 95, 165, 0.25);
            overflow: hidden;
            margin: 0 auto 28px;
            display: flex;
            align-items: center;
            justify-content: center;
            background: #EEF4FC;
        }

        .avatar-ring img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        /* ── Heading ── */
        .login-card h2 {
            font-family: 'Fraunces', serif;
            font-weight: 300;
            font-size: 26px;
            color: #0f1923;
            text-align: center;
            margin-bottom: 32px;
            letter-spacing: -0.01em;
        }

        /* ── Field groups ── */
        .field-group {
            margin-bottom: 20px;
        }

        .field-group label {
            display: block;
            font-size: 11px;
            font-weight: 600;
            letter-spacing: 0.09em;
            text-transform: uppercase;
            color: #7a8799;
            margin-bottom: 7px;
        }

        .field-input {
            width: 100% !important;
            background: #f5f7fa !important;
            border: 1px solid #dde2ea !important;
            border-radius: 10px !important;
            color: #0f1923 !important;
            font-family: 'DM Sans', sans-serif !important;
            font-size: 15px !important;
            height: 46px !important;
            padding: 0 14px !important;
            outline: none !important;
            transition: border-color 0.2s, background 0.2s, box-shadow 0.2s !important;
            box-sizing: border-box !important;
        }

        .field-input:focus {
            border-color: #378ADD !important;
            background: #ffffff !important;
            box-shadow: 0 0 0 3px rgba(55, 138, 221, 0.12) !important;
        }

        .field-input::placeholder {
            color: #b0bac6 !important;
        }

        /* ── Password wrapper ── */
        .password-wrap {
            position: relative;
        }

        .password-wrap .field-input {
            padding-right: 48px !important;
        }

        .toggle-pw {
            position: absolute;
            right: 13px;
            top: 50%;
            transform: translateY(-50%);
            background: none;
            border: none;
            cursor: pointer;
            padding: 0;
            display: flex;
            align-items: center;
            color: #b0bac6;
            transition: color 0.18s;
        }

        .toggle-pw:hover {
            color: #378ADD;
        }

        /* ── Submit button ── */
        .submit-btn {
            width: 100% !important;
            height: 48px !important;
            background: #185FA5 !important;
            border: none !important;
            border-radius: 11px !important;
            color: #ffffff !important;
            font-family: 'DM Sans', sans-serif !important;
            font-size: 15px !important;
            font-weight: 500 !important;
            cursor: pointer !important;
            margin-top: 8px !important;
            transition: background 0.18s, transform 0.12s, box-shadow 0.18s !important;
            letter-spacing: 0.01em !important;
        }

        .submit-btn:hover {
            background: #378ADD !important;
            transform: translateY(-1px) !important;
            box-shadow: 0 6px 18px rgba(24, 95, 165, 0.28) !important;
        }

        .submit-btn:active {
            background: #0C447C !important;
            transform: translateY(0) !important;
            box-shadow: none !important;
        }

        /* ── Status label ── */
        .status-label {
            display: block;
            text-align: center;
            font-size: 13px;
            color: #a32d2d;
            margin-top: 10px;
            min-height: 18px;
        }

        /* ── Links row ── */
        .links-row {
            margin-top: 24px;
            display: flex;
            flex-direction: column;
            gap: 10px;
            align-items: center;
        }

        .links-row a,
        .links-row .asp-link {
            font-size: 13px;
            color: #7a8799;
            text-decoration: none;
            transition: color 0.18s;
        }

        .links-row a:hover,
        .links-row .asp-link:hover {
            color: #185FA5;
            text-decoration: none;
        }

        .links-divider {
            width: 100%;
            border: none;
            border-top: 1px solid #eaecf0;
            margin: 4px 0;
        }

        /* ── Validation dialog ── */
        #validation_dialog {
            display: none;
            background: #fef2f2;
            border: 1px solid #fca5a5;
            border-radius: 10px;
            padding: 14px 18px;
            margin-top: 12px;
        }

        #validation_dialog ul {
            margin: 0;
            padding-left: 18px;
            color: #7f1d1d;
            font-size: 13px;
            line-height: 1.7;
        }

        /* Hide the asp validators (display: none already set) */
        .field-validator { display: none; }
    </style>

    <script type="text/javascript">
        function show() {
            var f = document.getElementById("pas2");
            var isHidden = f.type === "password";
            f.type = isHidden ? "text" : "password";
            var icon = document.getElementById("eye-icon");
            if (icon) icon.setAttribute("data-visible", isHidden ? "1" : "0");
        }

        window.addEventListener("DOMContentLoaded", function () {
            var btn = document.getElementById("shtext");
            if (btn) btn.addEventListener("click", show);
        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <script type="text/javascript">
        function WebForm_OnSubmit() {
            if (typeof (ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) {
                $("#validation_dialog").fadeIn(200);
                return false;
            }
            return true;
        }
    </script>

    <div class="login-page">
        <div class="login-card">

            <!-- Avatar -->
            <div class="avatar-ring">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/d.png" AlternateText="User" />
            </div>

            <h2>Welcome back</h2>

            <!-- Username -->
            <div class="field-group">
                <label for="TextBox1">Username</label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="field-input" placeholder="Enter your username" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ControlToValidate="TextBox1" Display="None" ErrorMessage="Enter the email / username" CssClass="field-validator" />
            </div>

            <!-- Password -->
            <div class="field-group">
                <label for="pas2">Password</label>
                <div class="password-wrap">
                    <asp:TextBox ID="pas2" runat="server" TextMode="Password" CssClass="field-input" placeholder="Enter your password" />
                    <button type="button" class="toggle-pw" id="shtext" aria-label="Toggle password visibility">
                        <svg id="eye-icon" data-visible="0" width="18" height="18" viewBox="0 0 24 24" fill="none"
                            stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"/>
                            <circle cx="12" cy="12" r="3"/>
                        </svg>
                    </button>
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ControlToValidate="pas2" Display="None" ErrorMessage="Enter your password" CssClass="field-validator" />
            </div>

            <!-- Submit -->
            <asp:Button ID="Button1" runat="server" Text="Sign in" CssClass="submit-btn" OnClick="Button1_Click" />

            <!-- Status -->
            <asp:Label ID="Label1" runat="server" CssClass="status-label" />

            <!-- Validation summary -->
            <div id="validation_dialog">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </div>

            <!-- Links -->
            <div class="links-row">
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Registration_user.aspx" CssClass="asp-link">
                    Don't have an account? Register here
                </asp:HyperLink>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ForgetePassword.aspx" CssClass="asp-link">
                    Forgot password?
                </asp:HyperLink>
                <hr class="links-divider" />
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Company_regstration.aspx" CssClass="asp-link">
                    Register as a company
                </asp:HyperLink>
            </div>

        </div>
    </div>

</asp:Content>
