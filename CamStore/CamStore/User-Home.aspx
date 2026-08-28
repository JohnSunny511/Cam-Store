<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="User-Home.aspx.cs" Inherits="CamStore.User_Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 143px;
        }
        .auto-style3 {
            width: 629px;
        }
        .auto-style4 {
            margin-left: 0px;
            margin-top: 0px;
        }
        .auto-style6 {
            height: 100px;
        }
        .auto-style7 {
            width: 143px;
            height: 100px;
        }
        .auto-style8 {
            width: 629px;
            height: 100px;
        }
        .auto-style9 {
            height: 24px;
        }
        .auto-style10 {
            width: 143px;
            height: 24px;
        }
        .auto-style11 {
            width: 629px;
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Image ID="Image1" runat="server" CssClass="auto-style4" Height="215px" ImageUrl="~/photos/dslrrr.jpg" Width="1011px" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style7"></td>
            <td class="auto-style8">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Size="40pt" Text="Categories"></asp:Label>
            </td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:DataList ID="DataList1" runat="server" CellPadding="19" CellSpacing="1" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table class="w-100">
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="30px" Text='<%# Eval("category_name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="250px" ImageUrl='<%# Eval("category_photo") %>' Width="250px" CommandArgument='<%# Eval("category_id") %>' OnCommand="ImageButton1_Command" />
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("category_description") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style10"></td>
            <td class="auto-style11"></td>
            <td class="auto-style9"></td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
