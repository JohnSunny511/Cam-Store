<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="CamStore.ManageUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .manage-users-page {
            background-color: #f8f9fa;
            padding: 25px 20px 20px;
        }

        .manage-users-card {
            max-width: 850px;
            margin: auto;
            background: #ffffff;
            border-radius: 14px;
            padding: 25px;
            box-shadow: 0 5px 16px rgba(0,0,0,0.10);
        }

        .manage-users-title {
            display: block;
            text-align: center;
            font-size: 32px;
            font-weight: 700;
            color: #212529;
            margin-bottom: 25px;
        }

        .users-grid {
            width: 100%;
            border-collapse: collapse;
            border-radius: 10px;
            overflow: hidden;
        }

        .users-grid th {
            background-color: #212529;
            color: #ffffff;
            padding: 11px 10px;
            text-align: center;
            font-size: 14px;
        }

        .users-grid td {
            padding: 10px;
            text-align: center;
            vertical-align: middle;
            border-bottom: 1px solid #dee2e6;
            color: #212529;
            font-size: 14px;
        }

        .users-grid tr:hover td {
            background-color: #f8f9fa;
        }

        .users-grid input[type="submit"],
        .users-grid input[type="button"] {
            background-color: #212529;
            color: #ffffff;
            border: none;
            border-radius: 6px;
            padding: 6px 12px;
            font-size: 13px;
            cursor: pointer;
        }

        .users-grid input[type="submit"]:hover,
        .users-grid input[type="button"]:hover {
            background-color: #000000;
        }

        .users-grid table {
            margin: auto;
        }

        .users-grid input[type="radio"] {
            margin-right: 5px;
        }

        @media (max-width: 600px) {
            .manage-users-card {
                padding: 15px;
                overflow-x: auto;
            }

            .users-grid {
                min-width: 650px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="manage-users-page">
        <div class="manage-users-card">

            <asp:Label ID="Label2" runat="server"
                CssClass="manage-users-title"
                Text="Manage Users">
            </asp:Label>

            <asp:GridView ID="GridView1" runat="server"
                CssClass="users-grid"
                AutoGenerateColumns="False"
                DataKeyNames="user_id"
                OnRowCancelingEdit="GridView1_RowCancelingEdit"
                OnRowEditing="GridView1_RowEditing"
                OnRowUpdating="GridView1_RowUpdating">

                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="username" HeaderText="Name" />
                    <asp:BoundField DataField="email" HeaderText="Email" />

                    <asp:TemplateField HeaderText="Edit Status">
                        <EditItemTemplate>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                <asp:ListItem>Active</asp:ListItem>
                                <asp:ListItem>Inactive</asp:ListItem>
                            </asp:RadioButtonList>
                        </EditItemTemplate>

                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server"
                                Text='<%# Eval("user_status") %>'>
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

            </asp:GridView>

        </div>
    </div>
</asp:Content>