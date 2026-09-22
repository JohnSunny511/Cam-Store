<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="admin_edit_product.aspx.cs" Inherits="CamStore.admin_edit_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .edit-product-page {
            background-color: #f8f9fa;
            padding: 25px 20px 20px;
        }

        .edit-product-card {
            max-width: 1200px;
            margin: auto;
            background: #ffffff;
            border-radius: 14px;
            padding: 25px;
            box-shadow: 0 5px 16px rgba(0,0,0,0.10);
        }

        .edit-product-title {
            display: block;
            text-align: center;
            font-size: 32px;
            font-weight: 700;
            color: #212529;
            margin-bottom: 25px;
        }

        .product-grid {
            width: 100%;
            border-collapse: collapse;
            border-radius: 10px;
            overflow: hidden;
        }

        .product-grid th {
            background-color: #212529;
            color: #ffffff;
            padding: 11px 8px;
            text-align: center;
            font-size: 13px;
        }

        .product-grid td {
            padding: 10px 8px;
            text-align: center;
            vertical-align: middle;
            border-bottom: 1px solid #dee2e6;
            color: #212529;
            font-size: 13px;
        }

        .product-grid tr:hover td {
            background-color: #f8f9fa;
        }

        .product-grid img {
            width: 80px;
            height: 80px;
            object-fit: cover;
            border-radius: 8px;
        }

        .product-grid input[type="submit"],
        .product-grid input[type="button"] {
            background-color: #212529;
            color: #ffffff;
            border: none;
            border-radius: 6px;
            padding: 6px 12px;
            font-size: 13px;
            cursor: pointer;
        }

        .product-grid input[type="submit"]:hover,
        .product-grid input[type="button"]:hover {
            background-color: #000000;
        }

        .product-grid input[type="file"] {
            max-width: 170px;
            font-size: 12px;
        }

        @media (max-width: 900px) {
            .edit-product-card {
                padding: 15px;
                overflow-x: auto;
            }

            .product-grid {
                min-width: 1000px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="edit-product-page">
        <div class="edit-product-card">

            <asp:Label ID="Label1" runat="server"
                CssClass="edit-product-title"
                Text="Edit Products">
            </asp:Label>

            <asp:GridView ID="GridView1" runat="server"
                CssClass="product-grid"
                AutoGenerateColumns="False"
                DataKeyNames="product_id"
                OnRowCancelingEdit="GridView1_RowCancelingEdit"
                OnRowEditing="GridView1_RowEditing"
                OnRowUpdating="GridView1_RowUpdating">

                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="product_name" HeaderText="Name" />
                    <asp:BoundField DataField="product_description" HeaderText="Description" />
                    <asp:BoundField DataField="price" HeaderText="Price" />
                    <asp:BoundField DataField="stock" HeaderText="Stock" />
                    <asp:BoundField DataField="offer" HeaderText="Offer" />
                    <asp:BoundField DataField="product_status" HeaderText="Status" />

                    <asp:TemplateField HeaderText="Image">
                        <EditItemTemplate>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server"
                                ImageUrl='<%# Eval("product_image") %>' />
                        </ItemTemplate>
                        <ControlStyle Height="100px" Width="100px" />
                    </asp:TemplateField>
                </Columns>

            </asp:GridView>

        </div>
    </div>
</asp:Content>