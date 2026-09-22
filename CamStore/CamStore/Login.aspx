<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CamStore.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .login-page {
            background-color: #f8f9fa;
            padding: 25px 20px 20px;
        }

        .login-card {
            max-width: 420px;
            margin: auto;
            background: #ffffff;
            border-radius: 14px;
            padding: 30px;
            box-shadow: 0 5px 16px rgba(0,0,0,0.10);
        }

        .login-title {
            display: block;
            text-align: center;
            font-size: 32px;
            font-weight: 700;
            color: #212529;
            margin-bottom: 25px;
        }

        .form-row {
            margin-bottom: 16px;
        }

        .form-label {
            display: block;
            font-weight: 600;
            color: #212529;
            margin-bottom: 6px;
            font-size: 14px;
        }

        .form-input {
            width: 100%;
            padding: 9px 11px;
            border: 1px solid #ced4da;
            border-radius: 7px;
            font-size: 14px;
            box-sizing: border-box;
        }

        .form-input:focus {
            outline: none;
            border-color: #212529;
            box-shadow: 0 0 0 2px rgba(33,37,41,0.10);
        }

        .login-button {
            display: block;
            width: 100%;
            margin: 22px 0 10px;
            padding: 9px 20px;
            background-color: #212529;
            color: #ffffff;
            border: none;
            border-radius: 7px;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
        }

        .login-button:hover {
            background-color: #000000;
        }

        .login-message {
            display: block;
            text-align: center;
            margin-top: 12px;
            color: #dc3545;
            font-size: 14px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-page">
        <div class="login-card">

            <asp:Label ID="Label2" runat="server"
                CssClass="login-title"
                Text="Login">
            </asp:Label>

            <div class="form-row">
                <span class="form-label">Username</span>
                <asp:TextBox ID="TextBox1" runat="server"
                    CssClass="form-input">
                </asp:TextBox>
            </div>

            <div class="form-row">
                <span class="form-label">Password</span>
                <asp:TextBox ID="TextBox2" runat="server"
                    CssClass="form-input"
                    TextMode="Password">
                </asp:TextBox>
            </div>

            <asp:Button ID="Button1" runat="server"
                CssClass="login-button"
                Text="Login"
                OnClick="Button1_Click" />

            <asp:Label ID="Label1" runat="server"
                CssClass="login-message"
                Text="Label">
            </asp:Label>

        </div>
    </div>
</asp:Content>