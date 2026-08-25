<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin-home.aspx.cs" Inherits="CamStore.admin_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 24px;
        }
        .auto-style2 {
            width: 540px;
        }
        .auto-style3 {
            height: 24px;
            width: 540px;
        }
        .auto-style4 {
            width: 291px;
        }
        .auto-style5 {
            height: 24px;
            width: 291px;
        }
        .auto-style6 {
            margin-left: 0px;
        }
        .auto-style7 {
            width: 51px;
        }
        .auto-style8 {
            height: 24px;
            width: 51px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="109px" ImageUrl="~/photos/add category.png" Width="112px" PostBackUrl="~/Add_Category.aspx" />
            </td>
            <td class="auto-style7">&nbsp;</td>
            <td>
                <asp:ImageButton ID="ImageButton3" runat="server" CssClass="auto-style6" Height="111px" ImageUrl="~/photos/add product.png" Width="109px" PostBackUrl="~/Add_Product.aspx" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="102px" ImageUrl="~/photos/edit category.png" Width="112px" PostBackUrl="~/admin_edit_category.aspx" />
            </td>
            <td class="auto-style7">&nbsp;</td>
            <td>
                <asp:ImageButton ID="ImageButton4" runat="server" Height="100px" ImageUrl="~/photos/edit pro.png" Width="106px" PostBackUrl="~/admin_edit_product.aspx" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style5"></td>
            <td class="auto-style8"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
