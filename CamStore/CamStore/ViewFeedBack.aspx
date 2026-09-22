<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ViewFeedBack.aspx.cs" Inherits="CamStore.ViewFeedBack" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 24px;
        }
        .auto-style2 {
            width: 721px;
        }
        .auto-style3 {
            height: 24px;
            width: 721px;
        }
        .auto-style4 {
            width: 55px;
        }
        .auto-style5 {
            height: 24px;
            width: 55px;
        }
        .auto-style6 {
            width: 8px;
        }
        .auto-style7 {
            height: 24px;
            width: 8px;
        }
        .auto-style8 {
            width: 70px;
        }
        .auto-style9 {
            height: 24px;
            width: 70px;
        }
        .auto-style10 {
            width: 55px;
            height: 136px;
        }
        .auto-style11 {
            width: 8px;
            height: 136px;
        }
        .auto-style12 {
            width: 721px;
            height: 136px;
        }
        .auto-style13 {
            width: 70px;
            height: 136px;
        }
        .auto-style14 {
            height: 136px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style11"></td>
            <td class="auto-style12">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="793px">
                    <Columns>
                        <asp:BoundField DataField="username" HeaderText="Name" />
                        <asp:BoundField DataField="email" HeaderText="Email" />
                        <asp:BoundField DataField="product_id" HeaderText="Product ID" />
                        <asp:BoundField DataField="feedback_msg" HeaderText="Feedback Message" />
                        <asp:BoundField DataField="feedback_date" HeaderText="Date" />
                        <asp:TemplateField HeaderText="Reply Message">
                            <ItemTemplate>
                                <asp:Button ID="Button3" runat="server" CommandArgument='<%# Eval("user_id") + "," +Eval("product_id") %>' OnCommand="Button1_Command" Text="Button" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
            <td class="auto-style13"></td>
            <td class="auto-style14">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table class="w-100">
                        <tr>
                            <td>&nbsp;</td>
                            <td>From:</td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>To:</td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>Subject:</td>
                            <td>
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>Reply:</td>
                            <td>
                                <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Reply" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="auto-style14"></td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style7"></td>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style9"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style7"></td>
            <td class="auto-style3"></td>
            <td class="auto-style9"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
