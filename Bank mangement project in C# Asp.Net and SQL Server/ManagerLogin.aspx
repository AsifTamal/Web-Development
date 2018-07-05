<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManagerLogin.aspx.cs" Inherits="ManagerLogin" MasterPageFile="~/BankMasterPage.master"%>

<asp:Content ID="content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <h1><strong>Manager Login</strong></h1>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/StartPage.aspx">Home</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Manager Name</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxMName" runat="server" Width="280px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxMName" ErrorMessage="Manager must enter Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Manager Password</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxMPassword" runat="server" TextMode="Password" Width="280px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxMPassword" ErrorMessage="Password Needed"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="ButtonManager" runat="server" Text="Manager Login" Width="156px" OnClick="ButtonManager_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </asp:Content>