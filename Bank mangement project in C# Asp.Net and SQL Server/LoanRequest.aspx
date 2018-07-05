<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoanRequest.aspx.cs" Inherits="LoanRequest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Panel ID="Panel1" runat="server" Height="122px" Width="913px">
                        <div class="auto-style2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" ForeColor="Red" Text="Conditions For Loan"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
                            <br />
                            <asp:Label ID="Label2" runat="server" Text="Customer Must Have Enough Money"></asp:Label>
                            <br />
                            <asp:Label ID="Label5" runat="server"></asp:Label>
                            <br />
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                            <br />
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        </div>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Request to Loan" Width="223px" OnClick="Button1_Click1" style="text-align: center;position:absolute; top: 147px; left: 354px;" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
