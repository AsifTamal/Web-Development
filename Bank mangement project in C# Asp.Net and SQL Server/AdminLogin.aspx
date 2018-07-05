<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" MasterPageFile="~/BankMasterPage.master"%>
<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <h1 style="text-align: center">Administrator login</h1>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/StartPage.aspx">Home</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Administrator Name</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxAdminName" runat="server" Width="346px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxAdminName" ErrorMessage="name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Administrator Password</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxAdminPassword" runat="server" TextMode="Password" Width="344px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxAdminPassword" ErrorMessage="pass"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnadmin" runat="server" Text="Administrator Login" OnClick="btnadmin_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
  
    </asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 597px;
        }
        .auto-style2 {
            width: 18px;
        }
        .auto-style3 {
            width: 19px;
        }
    </style>
</asp:Content>
