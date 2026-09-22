<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="admin_edit_category.aspx.cs" Inherits="CamStore.admin_edit_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .edit-category-page {
            background-color: #f8f9fa;
            padding: 25px 20px 20px;
        }

        .edit-category-card {
            max-width: 1100px;
            margin: auto;
            background: #ffffff;
            border-radius: 14px;
            padding: 25px;
            box-shadow: 0 5px 16px rgba(0,0,0,0.10);
        }

        .edit-category-title {
            display: block;
            text-align: center;
            font-size: 32px;
            font-weight: 700;
            color: #212529;
            margin-bottom: 25px;
        }

        .category-grid {
            width: 100%;
            border-collapse: collapse;
            border-radius: 10px;
            overflow: hidden;
        }

        .category-grid th {
            background-color: #212529;
            color: #ffffff;
            padding: 12px 10px;
            text-align: center;
            font-size: 14px;
        }

        .category-grid td {
            padding: 10px;
            text-align: center;
            vertical-align: middle;
            border-bottom: 1px solid #dee2e6;
            color: #212529;
            font-size: 14px;
        }

        .category-grid tr:hover td {
            background-color: #f8f9fa;
        }

        .category-grid img {
            width: 80px;
            height: 80px;
            object-fit: cover;
            border-radius: 8px;
        }

        .category-grid input[type="submit"],
        .category-grid input[type="button"] {
            background-color: #212529;
            color: #ffffff;
            border: none;
            border-radius: 6px;
            padding: 6px 12px;
            font-size: 13px;
            cursor: pointer;
        }

        .category-grid input[type="submit"]:hover,
        .category-grid input[type="button"]:hover {
            background-color: #000000;
        }

        .category-grid input[type="file"] {
            max-width: 180px;
            font-size: 13px;
        }

        @media (max-width: 700px) {
            .edit-category-card {
                padding: 15px;
                overflow-x: auto;
            }

            .category-grid {
                min-width: 700px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="edit-category-page">
        <div class="edit-category-card">

            <asp:Label ID="Label1" runat="server"
                CssClass="edit-category-title"
                Text="Edit Category">
            </asp:Label>

            <asp:GridView ID="GridView1" runat="server"
                CssClass="category-grid"
                AutoGenerateColumns="False"
                DataKeyNames="category_id"
                OnRowEditing="GridView1_RowEditing"
                OnRowUpdating="GridView1_RowUpdating"
                OnRowCancelingEdit="GridView1_RowCancelingEdit">

                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="category_name" HeaderText="Name" />
                    <asp:BoundField DataField="category_description" HeaderText="Description" />

                    <asp:TemplateField HeaderText="Photo">
                        <EditItemTemplate>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server"
                                ImageUrl='<%# Eval("category_photo") %>' />
                        </ItemTemplate>
                        <ControlStyle Height="100px" Width="100px" />
                    </asp:TemplateField>

                    <asp:BoundField DataField="category_status" HeaderText="Status" />
                </Columns>

            </asp:GridView>

        </div>
    </div>
</asp:Content>