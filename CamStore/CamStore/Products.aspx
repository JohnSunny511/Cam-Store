<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="Products.aspx.cs"
    Inherits="CamStore.Products" %>


<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <style type="text/css">

        /* ==============================
           PRODUCTS PAGE
           ============================== */

        .products-page {
            background-color: #f8f9fa;
            padding: 10px 0 20px 0;
        }


        /* ==============================
           PAGE TITLE
           ============================== */

        .products-title {
            text-align: center;
            margin-bottom: 25px;
        }

        .products-title h1 {
            font-size: 36px;
            font-weight: 700;
            color: #212529;
            margin-bottom: 8px;
        }

        .title-line {
            width: 60px;
            height: 4px;
            background-color: #212529;
            margin: auto;
            border-radius: 5px;
        }


        /* ==============================
           PRODUCT LIST
           ============================== */

        .product-list {
            width: 100%;
            max-width: 1200px;
            margin: auto;
        }


        /* ==============================
           PRODUCT CARD
           ============================== */

        .product-card {
            width: 250px;
            background-color: white;
            border-radius: 14px;
            padding: 15px;
            margin: 10px;
            box-shadow: 0 5px 16px rgba(0, 0, 0, 0.10);
            vertical-align: top;
            transition: all 0.3s ease;
        }

        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 12px 25px rgba(0, 0, 0, 0.16);
        }


        /* ==============================
           PRODUCT NAME
           ============================== */

        .product-name {
            display: block;
            text-align: center;
            font-size: 20px;
            font-weight: 700;
            color: #212529;
            margin-bottom: 12px;
            min-height: 28px;
        }


        /* ==============================
           PRODUCT IMAGE
           ============================== */

        .product-image {
            width: 220px;
            height: 200px;
            object-fit: cover;
            border-radius: 10px;
            display: block;
            margin: auto;
            cursor: pointer;
            transition: transform 0.3s ease;
        }

        .product-card:hover .product-image {
            transform: scale(1.03);
        }


        /* ==============================
           PRODUCT PRICE
           ============================== */

        .product-price {
            display: block;
            text-align: center;
            color: #198754;
            font-size: 20px;
            font-weight: 700;
            margin-top: 12px;
        }


        /* ==============================
           PRODUCT DESCRIPTION
           ============================== */

        .product-description {
            display: block;
            text-align: center;
            color: #6c757d;
            font-size: 14px;
            line-height: 1.5;
            margin-top: 8px;
            min-height: 42px;
        }


        /* ==============================
           RESPONSIVE
           ============================== */

        @media (max-width: 768px) {

            .products-title h1 {
                font-size: 30px;
            }

            .product-card {
                width: 220px;
            }

            .product-image {
                width: 190px;
                height: 175px;
            }

        }

    </style>

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="products-page">

        <!-- ==============================
             PAGE TITLE
             ============================== -->

        <div class="products-title">

            <h1>Products</h1>

            <div class="title-line"></div>

        </div>


        <!-- ==============================
             PRODUCT LIST
             ============================== -->

        <asp:DataList ID="DataList1"
            runat="server"
            DataKeyField="product_id"
            RepeatDirection="Horizontal"
            CellPadding="0"
            CellSpacing="0"
            CssClass="product-list">

            <ItemTemplate>

                <div class="product-card">

                    <!-- Product Name -->

                    <asp:Label ID="Label2"
                        runat="server"
                        CssClass="product-name"
                        Text='<%# Eval("product_name") %>'>
                    </asp:Label>


                    <!-- Product Image -->

                    <asp:ImageButton ID="ImageButton1"
                        runat="server"
                        CssClass="product-image"
                        ImageUrl='<%# Eval("product_image") %>'
                        CommandArgument='<%# Eval("product_id") %>'
                        OnCommand="ImageButton1_Command" />


                    <!-- Product Price -->

                    <asp:Label ID="Label3"
                        runat="server"
                        CssClass="product-price"
                        Text='<%# Eval("price") %>'>
                    </asp:Label>


                    <!-- Product Description -->

                    <asp:Label ID="Label4"
                        runat="server"
                        CssClass="product-description"
                        Text='<%# Eval("product_description") %>'>
                    </asp:Label>

                </div>

            </ItemTemplate>

        </asp:DataList>

    </div>

</asp:Content>