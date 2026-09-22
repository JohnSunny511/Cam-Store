<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="CamStore.Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .feedback-page {
            background-color: #f8f9fa;
            padding: 25px 20px 20px;
        }

        .feedback-card {
            max-width: 600px;
            margin: auto;
            background: #ffffff;
            border-radius: 14px;
            padding: 25px 30px;
            box-shadow: 0 5px 16px rgba(0,0,0,0.10);
        }

        .feedback-title {
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
            margin-bottom: 18px;
        }

        .form-label {
            width: 150px;
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

        .message-input {
            min-height: 110px;
            resize: vertical;
        }

        .feedback-button {
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

        .feedback-button:hover {
            background-color: #157347;
        }

        .feedback-message {
            display: block;
            text-align: center;
            margin-top: 10px;
            color: #198754;
            font-size: 14px;
        }

        @media (max-width: 600px) {
            .feedback-card {
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
    <div class="feedback-page">
        <div class="feedback-card">

            <asp:Label ID="Label1" runat="server"
                CssClass="feedback-title"
                Text="Feedback">
            </asp:Label>

            <div class="form-row">
                <span class="form-label">Product:</span>
                <asp:DropDownList ID="DropDownList1" runat="server"
                    CssClass="form-input">
                </asp:DropDownList>
            </div>

            <div class="form-row">
                <span class="form-label">Reply Message:</span>
                <asp:TextBox ID="TextBox1" runat="server"
                    CssClass="form-input message-input"
                    TextMode="MultiLine">
                </asp:TextBox>
            </div>

            <asp:Button ID="Button1" runat="server"
                CssClass="feedback-button"
                OnClick="Button1_Click"
                Text="Button" />

            <asp:Label ID="Label2" runat="server"
                CssClass="feedback-message"
                Text="Label">
            </asp:Label>

        </div>
    </div>
</asp:Content>