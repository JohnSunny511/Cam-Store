<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="CamStore.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 40px;
        }
        .auto-style2 {
            width: 277px;
        }
        .auto-style3 {
            height: 24px;
        }
        .auto-style4 {
            width: 277px;
            height: 24px;
        }
        .auto-style5 {
            width: 99%
        }
        .auto-style6 {
            width: 565px;
        }
        .auto-style7 {
            width: 71px;
        }
        .auto-style8 {
            width: 84px;
        }
        .auto-style10 {
            width: 250px;
        }
        .auto-style11 {
            width: 68px;
        }
        .auto-style12 {
            width: 40px;
            height: 24px;
        }
        .auto-style13 {
            width: 565px;
            height: 24px;
        }
        .auto-style14 {
            width: 84px;
            height: 24px;
        }
        .auto-style15 {
            width: 71px;
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">
                <asp:Panel ID="Panel1" runat="server">
                    <table class="auto-style5">
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BILL&nbsp;&nbsp; PAYMENT&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style2">Account Number:</td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Pay" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3"></td>
                            <td class="auto-style4"></td>
                            <td class="auto-style3"></td>
                            <td class="auto-style3"></td>
                        </tr>
                        <tr>
                            <td class="auto-style3"></td>
                            <td class="auto-style4"></td>
                            <td class="auto-style3">
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style3"></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>
                <asp:Panel ID="Panel2" runat="server">
                    <table class="w-100">
                        <tr>
                            <td class="auto-style11">&nbsp;</td>
                            <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ACCOUNT </td>
                            <td>REGISTRATION</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style11">&nbsp;</td>
                            <td class="auto-style10">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style11">&nbsp;</td>
                            <td class="auto-style10">Account Number:</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">&nbsp;</td>
                            <td class="auto-style10">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style11">&nbsp;</td>
                            <td class="auto-style10">Account Type:</td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>Savings</asp:ListItem>
                                    <asp:ListItem>Current</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style11">&nbsp;</td>
                            <td class="auto-style10">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style11">&nbsp;</td>
                            <td class="auto-style10">Amount:</td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style11">&nbsp;</td>
                            <td class="auto-style10">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style11">&nbsp;</td>
                            <td class="auto-style10">&nbsp;</td>
                            <td>
                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Insert" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style11">&nbsp;</td>
                            <td class="auto-style10">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style11">&nbsp;</td>
                            <td class="auto-style10">&nbsp;</td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style13"></td>
            <td class="auto-style14"></td>
            <td class="auto-style15"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
