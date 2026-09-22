<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="ProductDetails.aspx.cs"
    Inherits="CamStore.ProductDetails" %>


<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <style type="text/css">

        /* =========================================
           PRODUCT DETAILS PAGE
           ========================================= */

        .product-details-page {
            background-color: #f8f9fa;
            padding: 15px 20px 25px 20px;
        }


        /* =========================================
           PAGE TITLE
           ========================================= */

        .details-title {
            text-align: center;
            margin-bottom: 20px;
        }

        .details-title h1 {
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
           PRODUCT DETAILS CARD
           ========================================= */

        .details-card {
            max-width: 900px;
            margin: auto;
            background-color: white;
            border-radius: 16px;
            padding: 25px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.10);

            display: flex;
            align-items: center;
            gap: 45px;
        }


        /* =========================================
           PRODUCT IMAGE
           ========================================= */

        .details-image {
            width: 350px;
            height: 350px;
            object-fit: cover;
            border-radius: 14px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.12);
            flex-shrink: 0;
        }


        /* =========================================
           PRODUCT INFORMATION
           ========================================= */

        .product-info {
            flex: 1;
        }

        .product-info-row {
            margin-bottom: 12px;
        }

        .product-info-label {
            display: block;
            font-size: 15px;
            color: #6c757d;
            margin-bottom: 3px;
        }

        .product-info-value {
            display: block;
            font-size: 22px;
            font-weight: 600;
            color: #212529;
        }


        /* Price */

        .product-price {
            color: #198754;
            font-size: 25px;
            font-weight: 700;
        }


        /* Stock / other information */

        .product-stock {
            font-size: 17px;
            font-weight: 500;
        }


        /* =========================================
           QUANTITY
           ========================================= */

        .quantity-section {
            margin-top: 20px;
        }

        .quantity-title {
            font-size: 15px;
            color: #6c757d;
            display: block;
            margin-bottom: 7px;
        }

        .quantity-controls {
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .quantity-button {
            width: 34px;
            height: 34px;
            border: none;
            border-radius: 6px;
            background-color: #212529;
            color: white;
            font-size: 20px;
            font-weight: bold;
            line-height: 20px;
            cursor: pointer;
        }

        .quantity-button:hover {
            background-color: #000000;
        }

        .quantity-box {
            width: 45px !important;
            height: 34px;
            text-align: center;
            border: 1px solid #ced4da;
            border-radius: 6px;
            font-size: 16px;
        }


        /* =========================================
           VALIDATION
           ========================================= */

        .quantity-error {
            display: block;
            color: #dc3545;
            font-size: 13px;
            margin-top: 5px;
        }


        /* =========================================
           BUTTONS
           ========================================= */

        .action-buttons {
            margin-top: 22px;
            display: flex;
            flex-wrap: wrap;
            gap: 8px;
        }

        .action-button {
            border: none;
            border-radius: 7px;
            padding: 9px 18px;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
        }

        .add-cart-button {
            background-color: #212529;
            color: white;
        }

        .add-cart-button:hover {
            background-color: #000000;
        }

        .continue-button {
            background-color: #6c757d;
            color: white;
        }

        .continue-button:hover {
            background-color: #5c636a;
        }

        .view-cart-button {
            background-color: #198754;
            color: white;
        }

        .view-cart-button:hover {
            background-color: #157347;
        }


        /* =========================================
           MESSAGE LABEL
           ========================================= */

        .details-message {
            display: block;
            max-width: 900px;
            margin: 12px auto 0 auto;
            text-align: center;
            color: #dc3545;
            font-size: 14px;
        }


        /* =========================================
           RESPONSIVE
           ========================================= */

        @media (max-width: 768px) {

            .details-card {
                flex-direction: column;
                gap: 20px;
                padding: 20px;
            }

            .details-image {
                width: 280px;
                height: 280px;
            }

            .product-info {
                width: 100%;
            }

            .action-buttons {
                justify-content: center;
            }

        }

    </style>

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <div class="product-details-page">


        <!-- =========================================
             TITLE
             ========================================= -->

        <div class="details-title">

            <h1>Product Details</h1>

            <div class="title-line"></div>

        </div>


        <!-- =========================================
             PRODUCT CARD
             ========================================= -->

        <div class="details-card">


            <!-- =====================================
                 PRODUCT IMAGE
                 ===================================== -->

            <asp:Image ID="Image1"
                runat="server"
                CssClass="details-image"
                Height="350px"
                Width="350px" />


            <!-- =====================================
                 PRODUCT INFORMATION
                 ===================================== -->

            <div class="product-info">


                <!-- Product Name -->

                <div class="product-info-row">

                    <span class="product-info-label">
                        Product
                    </span>

                    <asp:Label ID="Label5"
                        runat="server"
                        CssClass="product-info-value"
                        Text="Label">
                    </asp:Label>

                </div>


                <!-- Price -->

                <div class="product-info-row">

                    <span class="product-info-label">
                        Price
                    </span>

                    <asp:Label ID="Label6"
                        runat="server"
                        CssClass="product-price"
                        Text="Label">
                    </asp:Label>

                </div>


                <!-- Other Product Information -->

                <div class="product-info-row">

                    <span class="product-info-label">
                        Details
                    </span>

                    <asp:Label ID="Label7"
                        runat="server"
                        CssClass="product-stock"
                        Text="Label">
                    </asp:Label>

                </div>


                <!-- =================================
                     QUANTITY
                     ================================= -->

                <div class="quantity-section">

                    <span class="quantity-title">
                        Quantity
                    </span>


                    <div class="quantity-controls">


                        <!-- Minus -->

                        <asp:Button ID="Button1"
                            runat="server"
                            CssClass="quantity-button"
                            Font-Bold="True"
                            Text="-"
                            Width="34px"
                            CausesValidation="False"
                            OnClick="Button1_Click" />


                        <!-- Quantity -->

                        <asp:TextBox ID="TextBox1"
                            runat="server"
                            CssClass="quantity-box"
                            Width="45px">0</asp:TextBox>


                        <!-- Plus -->

                        <asp:Button ID="Button2"
                            runat="server"
                            CssClass="quantity-button"
                            Font-Bold="True"
                            Text="+"
                            Width="34px"
                            OnClick="Button2_Click">
                        </asp:Button>

                    </div>


                    <!-- Quantity Validator -->

                    <asp:RangeValidator ID="RangeValidator1"
                        runat="server"
                        ControlToValidate="TextBox1"
                        CssClass="quantity-error"
                        ErrorMessage="Limit Exceeded"
                        MaximumValue="3"
                        MinimumValue="0"
                        Type="Integer">
                    </asp:RangeValidator>

                </div>


                <!-- =================================
                     ACTION BUTTONS
                     ================================= -->

                <div class="action-buttons">


                    <!-- Add To Cart -->

                    <asp:Button ID="Button3"
                        runat="server"
                        CssClass="action-button add-cart-button"
                        Text="Add To Cart"
                        OnClick="Button3_Click" />


                    <!-- Continue -->

                    <asp:Button ID="Button5"
                        runat="server"
                        CssClass="action-button continue-button"
                        Text="Continue"
                        OnClick="Button5_Click" />


                    <!-- View Cart -->

                    <asp:Button ID="Button4"
                        runat="server"
                        CssClass="action-button view-cart-button"
                        Text="View Cart"
                        OnClick="Button4_Click" />

                </div>

            </div>

        </div>


        <!-- =========================================
             MESSAGE / STATUS
             ========================================= -->

        <asp:Label ID="Label8"
            runat="server"
            CssClass="details-message"
            Text="Label">
        </asp:Label>


    </div>

</asp:Content>