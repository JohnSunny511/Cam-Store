<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="CamStore.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="30pt" Text="Products"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:DataList ID="DataList1" runat="server" CellPadding="19" DataKeyField="product_id" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table class="w-100">
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("product_name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("product_id") %>' Height="250px" ImageUrl='<%# Eval("product_image") %>' OnCommand="ImageButton1_Command" Width="250px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("product_description") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
