<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StartPage.aspx.cs" Inherits="StartPage" MasterPageFile="~/BankMasterPage.master"%>

<asp:Content ID="content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
                <td class="auto-style7">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/StartPage.aspx">Home</asp:HyperLink>
&nbsp;&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AdminLogin.aspx">Admin</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ManagerLogin.aspx">Manager</asp:HyperLink>
&nbsp;
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Contact.aspx">Contact</asp:HyperLink>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" Height="188px" ImageUrl="~/1.jpg" Width="363px" />
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
        </table>
    </asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 1084px;
            height: 447px;
        }
        .auto-style5 {
            width: 13px;
            height: 141px;
        }
        .auto-style6 {
            height: 141px;
            width: 648px;
        }
        .auto-style7 {
            width: 683px;
            height: 141px;
        }
        .auto-style8 {
            width: 13px;
        }
        .auto-style9 {
            width: 648px;
        }
        .auto-style10 {
            width: 683px;
        }
    </style>
</asp:Content>
