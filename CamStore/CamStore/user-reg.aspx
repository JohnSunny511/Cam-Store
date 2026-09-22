<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="user-reg.aspx.cs" Inherits="CamStore.user_reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .register-page {
        background-color: #f8f9fa;
        padding: 10px 15px;
    }

    .register-card {
        max-width: 600px;
        margin: auto;
        background: #ffffff;
        border-radius: 12px;
        padding: 15px 25px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.10);
    }

    .register-title {
        display: block;
        text-align: center;
        font-size: 26px;
        font-weight: 700;
        color: #212529;
        margin-bottom: 12px;
    }

    .form-row {
        display: flex;
        align-items: center;
        margin-bottom: 7px;
    }

    .form-label {
        width: 145px;
        font-weight: 600;
        color: #212529;
        font-size: 13px;
    }

    .form-control {
        flex: 1;
        width: 100%;
        height: 32px;
        padding: 5px 9px;
        border: 1px solid #ced4da;
        border-radius: 6px;
        font-size: 13px;
        box-sizing: border-box;
    }

    .form-control:focus {
        outline: none;
        border-color: #212529;
        box-shadow: 0 0 0 2px rgba(33,37,41,0.08);
    }

    .validator {
        display: block;
        margin-left: 145px;
        margin-top: -5px;
        margin-bottom: 3px;
        color: #dc3545;
        font-size: 10px;
    }

    .register-button {
        display: block;
        margin: 10px auto 5px;
        padding: 7px 25px;
        background-color: #198754;
        color: #ffffff;
        border: none;
        border-radius: 6px;
        font-size: 13px;
        font-weight: 600;
        cursor: pointer;
    }

    .register-button:hover {
        background-color: #157347;
    }

    .register-message {
        display: block;
        text-align: center;
        margin-top: 5px;
        color: #198754;
        font-size: 12px;
    }

    @media (max-width: 600px) {
        .register-card {
            padding: 15px;
        }

        .form-row {
            display: block;
            margin-bottom: 8px;
        }

        .form-label {
            display: block;
            width: 100%;
            margin-bottom: 3px;
        }

        .validator {
            margin-left: 0;
            margin-bottom: 3px;
        }
    }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="register-page">
        <div class="register-card">

            <asp:Label ID="Label2" runat="server"
                CssClass="register-title"
                Text="Registration">
            </asp:Label>

            <div class="form-row">
                <span class="form-label">Full Name</span>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                CssClass="validator"
                ControlToValidate="TextBox2"
                ErrorMessage="RequiredFieldValidator">
            </asp:RequiredFieldValidator>

            <div class="form-row">
                <span class="form-label">Email</span>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                CssClass="validator"
                ControlToValidate="TextBox3"
                ErrorMessage="RegularExpressionValidator"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
            </asp:RegularExpressionValidator>

            <div class="form-row">
                <span class="form-label">Phone</span>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                CssClass="validator"
                ControlToValidate="TextBox4"
                ErrorMessage="RegularExpressionValidator"
                ValidationExpression="^[0-9]{10}$">
            </asp:RegularExpressionValidator>

            <div class="form-row">
                <span class="form-label">Age</span>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:RangeValidator ID="RangeValidator1" runat="server"
                CssClass="validator"
                ControlToValidate="TextBox5"
                ErrorMessage="RangeValidator"
                MaximumValue="60"
                MinimumValue="20">
            </asp:RangeValidator>

            <div class="form-row">
                <span class="form-label">Address</span>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                CssClass="validator"
                ControlToValidate="TextBox6"
                ErrorMessage="RequiredFieldValidator">
            </asp:RequiredFieldValidator>

            <div class="form-row">
                <span class="form-label">Username</span>
                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                CssClass="validator"
                ControlToValidate="TextBox7"
                ErrorMessage="RequiredFieldValidator">
            </asp:RequiredFieldValidator>

            <div class="form-row">
                <span class="form-label">Password</span>
                <asp:TextBox ID="TextBox8" runat="server"
                    CssClass="form-control"
                    TextMode="Password">
                </asp:TextBox>
            </div>
            <asp:CompareValidator ID="CompareValidator1" runat="server"
                CssClass="validator"
                ControlToCompare="TextBox9"
                ControlToValidate="TextBox8"
                ErrorMessage="CompareValidator">
            </asp:CompareValidator>

            <div class="form-row">
                <span class="form-label">Confirm Password</span>
                <asp:TextBox ID="TextBox9" runat="server"
                    CssClass="form-control"
                    TextMode="Password">
                </asp:TextBox>
            </div>
            <asp:CompareValidator ID="CompareValidator2" runat="server"
                CssClass="validator"
                ControlToCompare="TextBox8"
                ControlToValidate="TextBox9"
                ErrorMessage="CompareValidator">
            </asp:CompareValidator>

            <div class="form-row">
                <span class="form-label">Pincode</span>
                <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                CssClass="validator"
                ControlToValidate="TextBox10"
                ErrorMessage="RequiredFieldValidator">
            </asp:RequiredFieldValidator>

            <asp:Button ID="Button1" runat="server"
                CssClass="register-button"
                Text="Register"
                OnClick="Button1_Click" />

            <asp:Label ID="Label1" runat="server"
                CssClass="register-message"
                Text="Label">
            </asp:Label>

        </div>
    </div>
</asp:Content>