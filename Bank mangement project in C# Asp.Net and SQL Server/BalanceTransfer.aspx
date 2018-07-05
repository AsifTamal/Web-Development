<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BalanceTransfer.aspx.cs" Inherits="BalanceTransfer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 351px;
        }
        .auto-style3 {
            text-align: left;
            width: 215px;
        }
        .auto-style4 {
            width: 215px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ManagerMain.aspx">Manager Home</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">From Which Account you want to Transfer</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxTransferFromAcc" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">To Which Account you want to Transfer</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxTransferToAcc" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Amount you want to Transfer</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxTransferAmount" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;<asp:Button ID="ButtonTransfer" runat="server" OnClick="ButtonTransfer_Click" Text="Transfer Amount" Width="105px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
