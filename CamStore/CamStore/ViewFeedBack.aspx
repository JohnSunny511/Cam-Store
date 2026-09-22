<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ViewFeedBack.aspx.cs" Inherits="CamStore.ViewFeedBack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .feedback-page {
            background-color: #f8f9fa;
            padding: 25px 20px 20px;
        }

        .feedback-container {
            max-width: 1250px;
            margin: auto;
            display: flex;
            gap: 20px;
            align-items: flex-start;
        }

        .feedback-card,
        .reply-card {
            background: #ffffff;
            border-radius: 14px;
            padding: 20px;
            box-shadow: 0 5px 16px rgba(0,0,0,0.10);
        }

        .feedback-card {
            flex: 1;
            min-width: 0;
        }

        .reply-card {
            width: 330px;
        }

        .feedback-title {
            display: block;
            text-align: center;
            font-size: 28px;
            font-weight: 700;
            color: #212529;
            margin-bottom: 20px;
        }

        .feedback-grid {
            width: 100%;
            border-collapse: collapse;
        }

        .feedback-grid th {
            background-color: #212529;
            color: #ffffff;
            padding: 10px 8px;
            text-align: center;
            font-size: 13px;
        }

        .feedback-grid td {
            padding: 10px 8px;
            text-align: center;
            vertical-align: middle;
            border-bottom: 1px solid #dee2e6;
            color: #212529;
            font-size: 13px;
        }

        .feedback-grid tr:hover td {
            background-color: #f8f9fa;
        }

        .reply-button {
            background-color: #212529;
            color: #ffffff;
            border: none;
            border-radius: 6px;
            padding: 6px 12px;
            font-size: 13px;
            cursor: pointer;
        }

        .reply-button:hover {
            background-color: #000000;
        }

        .reply-title {
            display: block;
            text-align: center;
            font-size: 22px;
            font-weight: 700;
            color: #212529;
            margin-bottom: 20px;
        }

        .reply-row {
            margin-bottom: 14px;
        }

        .reply-label {
            display: block;
            font-weight: 600;
            color: #212529;
            margin-bottom: 5px;
            font-size: 14px;
        }

        .reply-input {
            width: 100%;
            padding: 8px 10px;
            border: 1px solid #ced4da;
            border-radius: 7px;
            font-size: 13px;
            box-sizing: border-box;
        }

        .reply-input:focus {
            outline: none;
            border-color: #212529;
            box-shadow: 0 0 0 2px rgba(33,37,41,0.10);
        }

        .reply-message {
            min-height: 110px;
            resize: vertical;
        }

        .reply-submit {
            display: block;
            margin: 18px auto 5px;
            padding: 8px 25px;
            background-color: #198754;
            color: #ffffff;
            border: none;
            border-radius: 7px;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
        }

        .reply-submit:hover {
            background-color: #157347;
        }

        .status-message {
            display: block;
            text-align: center;
            margin-top: 15px;
            color: #198754;
            font-size: 13px;
        }

        @media (max-width: 900px) {
            .feedback-container {
                flex-direction: column;
            }

            .reply-card {
                width: 100%;
                box-sizing: border-box;
            }

            .feedback-card {
                width: 100%;
                box-sizing: border-box;
                overflow-x: auto;
            }

            .feedback-grid {
                min-width: 750px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="feedback-page">

        <div class="feedback-container">

            <div class="feedback-card">

                <asp:Label ID="Label2" runat="server"
                    CssClass="feedback-title"
                    Text="Feedback">
                </asp:Label>

                <asp:GridView ID="GridView1" runat="server"
                    CssClass="feedback-grid"
                    AutoGenerateColumns="False">

                    <Columns>
                        <asp:BoundField DataField="username" HeaderText="Name" />
                        <asp:BoundField DataField="email" HeaderText="Email" />
                        <asp:BoundField DataField="product_id" HeaderText="Product ID" />
                        <asp:BoundField DataField="feedback_msg" HeaderText="Feedback Message" />
                        <asp:BoundField DataField="feedback_date" HeaderText="Date" />

                        <asp:TemplateField HeaderText="Reply Message">
                            <ItemTemplate>
                                <asp:Button ID="Button3" runat="server"
                                    CssClass="reply-button"
                                    CommandArgument='<%# Eval("user_id") + "," + Eval("product_id") %>'
                                    OnCommand="Button1_Command"
                                    Text="Button" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>

            </div>

            <asp:Panel ID="Panel1" runat="server"
                CssClass="reply-card"
                Visible="False">

                <asp:Label ID="Label3" runat="server"
                    CssClass="reply-title"
                    Text="Reply">
                </asp:Label>

                <div class="reply-row">
                    <span class="reply-label">From:</span>
                    <asp:TextBox ID="TextBox5" runat="server"
                        CssClass="reply-input">
                    </asp:TextBox>
                </div>

                <div class="reply-row">
                    <span class="reply-label">To:</span>
                    <asp:TextBox ID="TextBox6" runat="server"
                        CssClass="reply-input">
                    </asp:TextBox>
                </div>

                <div class="reply-row">
                    <span class="reply-label">Subject:</span>
                    <asp:TextBox ID="TextBox7" runat="server"
                        CssClass="reply-input">
                    </asp:TextBox>
                </div>

                <div class="reply-row">
                    <span class="reply-label">Reply:</span>
                    <asp:TextBox ID="TextBox8" runat="server"
                        CssClass="reply-input reply-message"
                        TextMode="MultiLine">
                    </asp:TextBox>
                </div>

                <asp:Button ID="Button4" runat="server"
                    CssClass="reply-submit"
                    OnClick="Button4_Click"
                    Text="Reply" />

            </asp:Panel>

        </div>

        <asp:Label ID="Label1" runat="server"
            CssClass="status-message"
            Text="Label">
        </asp:Label>

    </div>
</asp:Content>