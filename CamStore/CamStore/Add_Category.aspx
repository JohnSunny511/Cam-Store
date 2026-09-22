<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Add_Category.aspx.cs" Inherits="CamStore.Add_Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .add-category-page {
            background-color: #f8f9fa;
            padding: 25px 20px 20px;
        }

        .category-card {
            max-width: 600px;
            margin: auto;
            background: #ffffff;
            border-radius: 14px;
            padding: 25px 30px;
            box-shadow: 0 5px 16px rgba(0,0,0,0.10);
        }

        .category-title {
            display: block;
            text-align: center;
            font-size: 32px;
            font-weight: 700;
            color: #212529;
            margin-bottom: 25px;
        }

        .form-row {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }

        .form-label {
            width: 130px;
            font-weight: 600;
            color: #212529;
        }

        .form-input {
            flex: 1;
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

        .file-input {
            flex: 1;
            font-size: 14px;
        }

        .add-button {
            display: block;
            margin: 20px auto 10px;
            padding: 9px 30px;
            background-color: #198754;
            color: white;
            border: none;
            border-radius: 7px;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
        }

        .add-button:hover {
            background-color: #157347;
        }

        .message {
            display: block;
            text-align: center;
            margin-top: 10px;
            color: #198754;
            font-size: 14px;
        }

        @media (max-width: 600px) {
            .category-card {
                padding: 20px;
            }

            .form-row {
                display: block;
            }

            .form-label {
                display: block;
                width: 100%;
                margin-bottom: 6px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="add-category-page">
        <div class="category-card">

            <asp:Label ID="Label1" runat="server"
                CssClass="category-title"
                Text="Add Category">
            </asp:Label>

            <div class="form-row">
                <span class="form-label">Name:</span>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-input"></asp:TextBox>
            </div>

            <div class="form-row">
                <span class="form-label">Description:</span>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-input"></asp:TextBox>
            </div>

            <div class="form-row">
                <span class="form-label">Photo:</span>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="file-input" />
            </div>

            <asp:Button ID="Button1" runat="server"
                CssClass="add-button"
                OnClick="Button1_Click"
                Text="Add" />

            <asp:Label ID="Label2" runat="server"
                CssClass="message"
                Text="Label">
            </asp:Label>

        </div>
    </div>
</asp:Content>