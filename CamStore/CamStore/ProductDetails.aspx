<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="CamStore.ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 376px;
    }
    .auto-style3 {
        width: 338px;
    }
    .auto-style4 {
        width: 19%;
        height: 185px;
    }
    .auto-style5 {
        width: 93%
    }
    .auto-style6 {
        height: 253px;
    }
    .auto-style7 {
        width: 376px;
        height: 253px;
    }
    .auto-style8 {
        width: 338px;
        height: 253px;
    }
    .auto-style9 {
        height: 40px;
    }
    .auto-style10 {
        height: 24px;
    }
    .auto-style11 {
        width: 376px;
        height: 24px;
    }
    .auto-style12 {
        width: 338px;
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
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6"></td>
        <td class="auto-style7"></td>
        <td class="auto-style8">
            <asp:Image ID="Image1" runat="server" Height="250px" Width="250px" />
        </td>
        <td class="auto-style6">
            <table class="auto-style4">
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <table class="auto-style5">
                            <tr>
                                <td>
                                    <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="-" Width="30px" CausesValidation="False" />
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" Width="17px">0</asp:TextBox>
                                </td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" Font-Bold="True" OnClick="Button2_Click" Text="+" Width="30px" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Limit Exceeded" MaximumValue="3" MinimumValue="0"></asp:RangeValidator>
                    </td>
                </tr>
            </table>
        </td>
        <td class="auto-style6"></td>
        <td class="auto-style6"></td>
        <td class="auto-style6"></td>
        <td class="auto-style6"></td>
    </tr>
    <tr>
        <td class="auto-style10"></td>
        <td class="auto-style11"></td>
        <td class="auto-style12"></td>
        <td class="auto-style10"></td>
        <td class="auto-style10"></td>
        <td class="auto-style10"></td>
        <td class="auto-style10"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
