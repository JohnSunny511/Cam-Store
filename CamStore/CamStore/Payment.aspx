<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="Payment.aspx.cs"
    Inherits="CamStore.Payment" %>


<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <style type="text/css">

        /* ==============================
           PAYMENT PAGE
           ============================== */

        .payment-page {
            background-color: #f8f9fa;
            padding: 15px 20px 25px 20px;
        }


        /* ==============================
           PAGE TITLE
           ============================== */

        .payment-title {
            text-align: center;
            margin-bottom: 20px;
        }

        .payment-title h1 {
            font-size: 32px;
            font-weight: 700;
            color: #212529;
            margin-bottom: 7px;
        }

        .title-line {
            width: 60px;
            height: 4px;
            background-color: #212529;
            margin: auto;
            border-radius: 5px;
        }


        /* ==============================
           PAYMENT CARDS
           ============================== */

        .payment-container {
            max-width: 1000px;
            margin: auto;
            display: flex;
            gap: 25px;
            align-items: flex-start;
        }

        .payment-card {
            flex: 1;
            background-color: white;
            border-radius: 14px;
            padding: 22px;
            box-shadow: 0 5px 18px rgba(0,0,0,0.10);
        }


        /* ==============================
           CARD HEADINGS
           ============================== */

        .card-title {
            text-align: center;
            margin-bottom: 20px;
        }

        .card-title h2 {
            font-size: 22px;
            font-weight: 700;
            color: #212529;
            margin: 0;
        }

        .card-title-line {
            width: 45px;
            height: 3px;
            background-color: #212529;
            margin: 7px auto 0 auto;
            border-radius: 5px;
        }


        /* ==============================
           FORM ROWS
           ============================== */

        .form-row {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
            gap: 15px;
        }

        .form-label {
            width: 125px;
            flex-shrink: 0;
            color: #495057;
            font-size: 14px;
            font-weight: 600;
        }


        /* ==============================
           TEXTBOXES
           ============================== */

        .payment-input {
            width: 100%;
            max-width: 220px;
            height: 36px;
            border: 1px solid #ced4da;
            border-radius: 6px;
            padding: 5px 9px;
            font-size: 14px;
            box-sizing: border-box;
        }

        .payment-input:focus {
            outline: none;
            border-color: #6c757d;
            box-shadow: 0 0 0 2px rgba(108,117,125,0.15);
        }


        /* ==============================
           DROPDOWN
           ============================== */

        .account-type {
            width: 100%;
            max-width: 220px;
            height: 36px;
            border: 1px solid #ced4da;
            border-radius: 6px;
            padding: 5px;
            font-size: 14px;
            background-color: white;
        }


        /* ==============================
           BUTTONS
           ============================== */

        .pay-button,
        .insert-button {
            border: none;
            border-radius: 7px;
            padding: 9px 25px;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
        }

        .pay-button {
            background-color: #198754;
            color: white;
        }

        .pay-button:hover {
            background-color: #157347;
            transform: translateY(-1px);
        }

        .insert-button {
            background-color: #212529;
            color: white;
        }

        .insert-button:hover {
            background-color: #000000;
            transform: translateY(-1px);
        }


        /* ==============================
           STATUS MESSAGES
           ============================== */

        .status-message {
            display: block;
            margin-top: 10px;
            color: #dc3545;
            font-size: 13px;
            text-align: center;
        }

        .bill-message {
            display: block;
            text-align: center;
            max-width: 1000px;
            margin: 12px auto 0 auto;
            color: #198754;
            font-size: 14px;
        }


        /* ==============================
           RESPONSIVE
           ============================== */

        @media (max-width: 768px) {

            .payment-container {
                flex-direction: column;
            }

            .payment-card {
                width: 100%;
                box-sizing: border-box;
            }

            .form-row {
                flex-direction: column;
                align-items: flex-start;
                gap: 5px;
            }

            .form-label {
                width: 100%;
            }

            .payment-input,
            .account-type {
                max-width: 100%;
            }

        }

    </style>

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="payment-page">


        <!-- PAGE TITLE -->

        <div class="payment-title">

            <h1>Payment</h1>

            <div class="title-line"></div>

        </div>


        <!-- PAYMENT CARDS -->

        <div class="payment-container">


            <!-- =================================
                 BILL PAYMENT
                 ================================= -->

            <asp:Panel ID="Panel1"
                runat="server"
                CssClass="payment-card">

                <div class="card-title">

                    <h2>Bill Payment</h2>

                    <div class="card-title-line"></div>

                </div>


                <!-- Account Number -->

                <div class="form-row">

                    <span class="form-label">
                        Account Number
                    </span>

                    <asp:TextBox ID="TextBox3"
                        runat="server"
                        CssClass="payment-input"
                        OnTextChanged="TextBox3_TextChanged">
                    </asp:TextBox>

                </div>


                <!-- Pay -->

                <div class="form-row">

                    <span class="form-label"></span>

                    <asp:Button ID="Button1"
                        runat="server"
                        CssClass="pay-button"
                        Text="Pay"
                        OnClick="Button1_Click" />

                </div>


                <!-- Status -->

                <asp:Label ID="Label2"
                    runat="server"
                    CssClass="status-message"
                    Text="Label">
                </asp:Label>


                <!-- Additional information -->

                <asp:Label ID="Label4"
                    runat="server"
                    CssClass="status-message"
                    Text="Label">
                </asp:Label>

                <asp:Label ID="Label5"
                    runat="server"
                    CssClass="status-message"
                    Text="Label">
                </asp:Label>

            </asp:Panel>


            <!-- =================================
                 ACCOUNT REGISTRATION
                 ================================= -->

            <asp:Panel ID="Panel2"
                runat="server"
                CssClass="payment-card">

                <div class="card-title">

                    <h2>Account Registration</h2>

                    <div class="card-title-line"></div>

                </div>


                <!-- Account Number -->

                <div class="form-row">

                    <span class="form-label">
                        Account Number
                    </span>

                    <asp:TextBox ID="TextBox1"
                        runat="server"
                        CssClass="payment-input"
                        AutoPostBack="True"
                        OnTextChanged="TextBox1_TextChanged">
                    </asp:TextBox>

                    <asp:Label ID="Label3"
                        runat="server"
                        CssClass="status-message"
                        Text="Label">
                    </asp:Label>

                </div>


                <!-- Account Type -->

                <div class="form-row">

                    <span class="form-label">
                        Account Type
                    </span>

                    <asp:DropDownList ID="DropDownList1"
                        runat="server"
                        CssClass="account-type">

                        <asp:ListItem>Savings</asp:ListItem>
                        <asp:ListItem>Current</asp:ListItem>

                    </asp:DropDownList>

                </div>


                <!-- Amount -->

                <div class="form-row">

                    <span class="form-label">
                        Amount
                    </span>

                    <asp:TextBox ID="TextBox2"
                        runat="server"
                        CssClass="payment-input">
                    </asp:TextBox>

                </div>


                <!-- Insert -->

                <div class="form-row">

                    <span class="form-label"></span>

                    <asp:Button ID="Button2"
                        runat="server"
                        CssClass="insert-button"
                        OnClick="Button2_Click"
                        Text="Insert" />

                </div>


                <!-- Status -->

                <asp:Label ID="Label1"
                    runat="server"
                    CssClass="status-message"
                    Text="Label">
                </asp:Label>

            </asp:Panel>

        </div>


        <!-- Bottom Message -->

        <asp:Label ID="Label6"
            runat="server"
            CssClass="bill-message"
            Text="Label">
        </asp:Label>


    </div>

</asp:Content>