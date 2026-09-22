<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="admin-home.aspx.cs" Inherits="CamStore.admin_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

        /* ==============================
           ADMIN HOME PAGE
           ============================== */

        .admin-home {
            background-color: #f8f9fa;
            padding: 25px 20px 20px 20px;
        }


        /* ==============================
           ADMIN ACTIONS
           ============================== */

        .admin-actions {
            max-width: 800px;
            margin: auto;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
        }


        /* ==============================
           ACTION CARD
           ============================== */

        .admin-card {
            background-color: white;
            border-radius: 14px;
            padding: 20px;
            text-align: center;
            box-shadow: 0 5px 16px rgba(0,0,0,0.10);
            transition: all 0.3s ease;
        }

        .admin-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 24px rgba(0,0,0,0.15);
        }


        /* ==============================
           ACTION ICON
           ============================== */

        .admin-icon {
            display: block;
            margin: auto;
            object-fit: contain;
        }


        /* ==============================
           BOTTOM BUTTONS
           ============================== */

        .admin-button {
            width: 100%;
            border: none;
            border-radius: 7px;
            padding: 10px 15px;
            background-color: #212529;
            color: white;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
        }

        .admin-button:hover {
            background-color: #000000;
            transform: translateY(-1px);
        }


        /* ==============================
           RESPONSIVE
           ============================== */

        @media (max-width: 600px) {

            .admin-actions {
                grid-template-columns: 1fr;
            }

        }

    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="admin-home">

        <div class="admin-actions">


            <!-- Add Category -->

            <div class="admin-card">

                <asp:ImageButton ID="ImageButton1"
                    runat="server"
                    CssClass="admin-icon"
                    Height="109px"
                    Width="112px"
                    ImageUrl="~/photos/add category.png"
                    PostBackUrl="~/Add_Category.aspx"
                    OnClick="ImageButton1_Click" />

            </div>


            <!-- Add Product -->

            <div class="admin-card">

                <asp:ImageButton ID="ImageButton3"
                    runat="server"
                    CssClass="admin-icon"
                    Height="111px"
                    Width="109px"
                    ImageUrl="~/photos/add product.png"
                    PostBackUrl="~/Add_Product.aspx"
                    OnClick="ImageButton3_Click" />

            </div>


            <!-- Edit Category -->

            <div class="admin-card">

                <asp:ImageButton ID="ImageButton2"
                    runat="server"
                    CssClass="admin-icon"
                    Height="102px"
                    Width="112px"
                    ImageUrl="~/photos/edit category.png"
                    PostBackUrl="~/admin_edit_category.aspx"
                    OnClick="ImageButton2_Click" />

            </div>


            <!-- Edit Product -->

            <div class="admin-card">

                <asp:ImageButton ID="ImageButton4"
                    runat="server"
                    CssClass="admin-icon"
                    Height="100px"
                    Width="106px"
                    ImageUrl="~/photos/edit pro.png"
                    PostBackUrl="~/admin_edit_product.aspx"
                    OnClick="ImageButton4_Click" />

            </div>


            <!-- View Feedback -->

            <div class="admin-card">

                <asp:Button ID="Button1"
                    runat="server"
                    CssClass="admin-button"
                    OnClick="Button1_Click"
                    Text="View Feedback" />

            </div>


            <!-- User Management -->

            <div class="admin-card">

                <asp:Button ID="Button2"
                    runat="server"
                    CssClass="admin-button"
                    OnClick="Button2_Click"
                    Text="User Managment" />

            </div>


        </div>

    </div>

</asp:Content>