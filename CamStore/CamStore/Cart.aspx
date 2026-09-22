<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="Cart.aspx.cs"
    Inherits="CamStore.Cart" %>


<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <style type="text/css">

        /* =========================================
           CART PAGE
           ========================================= */

        .cart-page {
            background-color: #f8f9fa;
            padding: 20px 20px 25px 20px;
        }


        /* =========================================
           TITLE
           ========================================= */

        .cart-title {
            text-align: center;
            margin-bottom: 20px;
        }

        .cart-title h1 {
            font-size: 34px;
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
           CART CONTAINER
           ========================================= */

        .cart-container {
            max-width: 1000px;
            margin: auto;
            background-color: white;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.10);
            overflow-x: auto;
        }


        /* =========================================
           GRIDVIEW
           ========================================= */

        .cart-grid {
            width: 100%;
            border-collapse: collapse;
            border: none;
        }

        .cart-grid th {
            background-color: #212529;
            color: white;
            padding: 12px 10px;
            text-align: center;
            font-size: 14px;
            font-weight: 600;
        }

        .cart-grid td {
            padding: 12px 10px;
            text-align: center;
            vertical-align: middle;
            border-bottom: 1px solid #dee2e6;
            color: #343a40;
            font-size: 14px;
        }

        .cart-grid tr:hover td {
            background-color: #f8f9fa;
        }


        /* =========================================
           PRODUCT IMAGE
           ========================================= */

        .cart-grid img {
            width: 80px !important;
            height: 80px !important;
            object-fit: cover;
            border-radius: 8px;
        }


        /* =========================================
           EDIT / DELETE BUTTONS
           ========================================= */

        .cart-grid a {
            text-decoration: none;
            font-weight: 600;
        }


        /* =========================================
           TOTAL SECTION
           ========================================= */

        .cart-summary {
            max-width: 1000px;
            margin: 15px auto 0 auto;
            display: flex;
            justify-content: flex-end;
        }

        .total-box {
            background-color: white;
            padding: 12px 22px;
            border-radius: 10px;
            box-shadow: 0 3px 10px rgba(0,0,0,0.08);
        }

        .total-label {
            font-size: 16px;
            color: #6c757d;
            margin-right: 10px;
        }

        .total-value {
            font-size: 22px;
            font-weight: 700;
            color: #198754;
        }


        /* =========================================
           CONFIRM BUTTON
           ========================================= */

        .confirm-section {
            max-width: 1000px;
            margin: 15px auto 0 auto;
            text-align: right;
        }

        .confirm-button {
            background-color: #198754;
            color: white;
            border: none;
            border-radius: 7px;
            padding: 10px 28px;
            font-size: 15px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
        }

        .confirm-button:hover {
            background-color: #157347;
            transform: translateY(-1px);
        }


        /* =========================================
           RESPONSIVE
           ========================================= */

        @media (max-width: 768px) {

            .cart-page {
                padding: 15px 10px;
            }

            .cart-title h1 {
                font-size: 28px;
            }

            .cart-container {
                padding: 10px;
            }

            .cart-grid th,
            .cart-grid td {
                padding: 8px 6px;
                font-size: 12px;
            }

            .cart-grid img {
                width: 65px !important;
                height: 65px !important;
            }

            .confirm-section {
                text-align: center;
            }

            .cart-summary {
                justify-content: center;
            }

        }

    </style>

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <div class="cart-page">


        <!-- =========================================
             TITLE
             ========================================= -->

        <div class="cart-title">

            <h1>Shopping Cart</h1>

            <div class="title-line"></div>

        </div>


        <!-- =========================================
             CART TABLE
             ========================================= -->

        <div class="cart-container">

            <asp:GridView ID="GridView1"
    runat="server"
    CssClass="cart-grid"
    AutoGenerateColumns="False"
    DataKeyNames="cart_id"
    OnRowCancelingEdit="GridView1_RowCancelingEdit"
    OnRowDeleting="GridView1_RowDeleting1"
    OnRowEditing="GridView1_RowEditing"
    OnRowUpdating="GridView1_RowUpdating">

    <Columns>

        <asp:CommandField
            ShowEditButton="True" />

        <asp:CommandField
            ShowDeleteButton="True" />

        <asp:BoundField
            DataField="product_name"
            HeaderText="Name" />

        <asp:BoundField
            DataField="quantity"
            HeaderText="Quantity" />

        <asp:BoundField
            DataField="subtotal"
            HeaderText="Total Amount" />

        <asp:ImageField
            DataImageUrlField="product_image"
            HeaderText="Product Image">

            <ControlStyle
                Height="80px"
                Width="80px" />

        </asp:ImageField>

    </Columns>

    <EmptyDataTemplate>

        <div style="text-align:center; padding:30px;">

            <asp:Image ID="Image1"
                runat="server"
                ImageUrl='<%# Eval("product_image") %>' />

            <p style="color:#6c757d; margin-top:10px;">
                Your cart is empty.
            </p>

        </div>

    </EmptyDataTemplate>

</asp:GridView>

        </div>


        <!-- =========================================
             TOTAL
             ========================================= -->

        <div class="cart-summary">

            <div class="total-box">

                <asp:Label ID="Label2"
                    runat="server"
                    CssClass="total-label"
                    Text="Label">
                </asp:Label>

            </div>

        </div>


        <!-- =========================================
             CONFIRM
             ========================================= -->

        <div class="confirm-section">

            <asp:Label ID="Label1"
                runat="server"
                CssClass="total-value"
                Text="Label">
            </asp:Label>


            <asp:Button ID="Button1"
                runat="server"
                CssClass="confirm-button"
                OnClick="Button1_Click"
                Text="Confirm" />

        </div>


    </div>

</asp:Content>