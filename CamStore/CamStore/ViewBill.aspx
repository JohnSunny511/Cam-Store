<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="ViewBill.aspx.cs"
    Inherits="CamStore.ViewBill" %>


<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <style type="text/css">

        /* =========================================
           BILL PAGE
           ========================================= */

        .bill-page {
            background-color: #f8f9fa;
            padding: 15px 20px 25px 20px;
        }


        /* =========================================
           PAGE TITLE
           ========================================= */

        .bill-title {
            text-align: center;
            margin-bottom: 20px;
        }

        .bill-title h1 {
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


        /* =========================================
           CUSTOMER / BILL INFORMATION
           ========================================= */

        .bill-info {
            max-width: 900px;
            margin: auto;
            background-color: white;
            padding: 15px 20px;
            border-radius: 12px;
            box-shadow: 0 4px 14px rgba(0,0,0,0.08);
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 15px;
        }

        .bill-info-item {
            text-align: center;
            flex: 1;
        }

        .bill-info-label {
            display: block;
            color: #6c757d;
            font-size: 13px;
            margin-bottom: 3px;
        }

        .bill-info-value {
            display: block;
            color: #212529;
            font-size: 17px;
            font-weight: 600;
        }


        /* =========================================
           BILL TABLE
           ========================================= */

        .bill-table-container {
            max-width: 900px;
            margin: auto;
            background-color: white;
            padding: 15px;
            border-radius: 12px;
            box-shadow: 0 5px 16px rgba(0,0,0,0.09);
            overflow-x: auto;
        }

        .bill-grid {
            width: 100%;
            border-collapse: collapse;
        }

        .bill-grid th {
            background-color: #212529;
            color: white;
            padding: 11px;
            text-align: center;
            font-size: 14px;
            font-weight: 600;
        }

        .bill-grid td {
            padding: 10px;
            text-align: center;
            border-bottom: 1px solid #dee2e6;
            color: #343a40;
            font-size: 14px;
        }

        .bill-grid tr:hover td {
            background-color: #f8f9fa;
        }


        /* =========================================
           GRAND TOTAL
           ========================================= */

        .grand-total {
            max-width: 900px;
            margin: 12px auto 0 auto;
            display: flex;
            justify-content: flex-end;
        }

        .grand-total-box {
            background-color: white;
            padding: 12px 20px;
            border-radius: 10px;
            box-shadow: 0 3px 10px rgba(0,0,0,0.08);
        }

        .grand-total-label {
            font-size: 16px;
            font-weight: 600;
            color: #495057;
            margin-right: 10px;
        }

        .grand-total-value {
            font-size: 23px;
            font-weight: 700;
            color: #198754;
        }


        /* =========================================
           PAYMENT BUTTON
           ========================================= */

        .payment-section {
            max-width: 900px;
            margin: 15px auto 0 auto;
            text-align: right;
        }

        .payment-button {
            background-color: #198754;
            color: white;
            border: none;
            border-radius: 7px;
            padding: 10px 30px;
            font-size: 15px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
        }

        .payment-button:hover {
            background-color: #157347;
            transform: translateY(-1px);
        }


        /* =========================================
           RESPONSIVE
           ========================================= */

        @media (max-width: 768px) {

            .bill-page {
                padding: 12px 10px 20px 10px;
            }

            .bill-title h1 {
                font-size: 28px;
            }

            .bill-info {
                flex-direction: column;
                gap: 10px;
            }

            .bill-info-item {
                width: 100%;
            }

            .bill-table-container {
                padding: 8px;
            }

            .bill-grid th,
            .bill-grid td {
                padding: 7px 5px;
                font-size: 12px;
            }

            .grand-total {
                justify-content: center;
            }

            .payment-section {
                text-align: center;
            }

        }

    </style>

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <div class="bill-page">


        <!-- =========================================
             TITLE
             ========================================= -->

        <div class="bill-title">

            <h1>Bill</h1>

            <div class="title-line"></div>

        </div>


        <!-- =========================================
             BILL / CUSTOMER INFORMATION
             ========================================= -->

        <div class="bill-info">

            <div class="bill-info-item">

                <span class="bill-info-label">
                    Customer
                </span>

                <asp:Label ID="Label1"
                    runat="server"
                    CssClass="bill-info-value"
                    Text="Label">
                </asp:Label>

            </div>


            <div class="bill-info-item">

                <span class="bill-info-label">
                    Bill Details
                </span>

                <asp:Label ID="Label2"
                    runat="server"
                    CssClass="bill-info-value"
                    Text="Label">
                </asp:Label>

            </div>


            <div class="bill-info-item">

                <span class="bill-info-label">
                    Date / Information
                </span>

                <asp:Label ID="Label3"
                    runat="server"
                    CssClass="bill-info-value"
                    Text="Label">
                </asp:Label>

            </div>

        </div>


        <!-- =========================================
             BILL ITEMS
             ========================================= -->

        <div class="bill-table-container">

            <asp:GridView ID="GridView1"
                runat="server"
                AutoGenerateColumns="False"
                CssClass="bill-grid">

                <Columns>

                    <asp:BoundField
                        DataField="username"
                        HeaderText="Name" />

                    <asp:BoundField
                        DataField="price"
                        HeaderText="Price" />

                    <asp:BoundField
                        DataField="order_quantity"
                        HeaderText="Quantity" />

                    <asp:BoundField
                        DataField="order_subtotal"
                        HeaderText="Subtotal" />

                </Columns>

            </asp:GridView>

        </div>


        <!-- =========================================
             GRAND TOTAL
             ========================================= -->

        <div class="grand-total">

            <div class="grand-total-box">

                <span class="grand-total-label">
                    Grand Total
                </span>

                <asp:Label ID="Label4"
                    runat="server"
                    CssClass="grand-total-value"
                    Text="Label">
                </asp:Label>

            </div>

        </div>


        <!-- =========================================
             PAYMENT
             ========================================= -->

        <div class="payment-section">

            <asp:Button ID="Button1"
                runat="server"
                CssClass="payment-button"
                OnClick="Button1_Click"
                Text="Payment" />

        </div>


    </div>

</asp:Content>