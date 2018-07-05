<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminDatabase.aspx.cs" Inherits="AdminDatabase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 297px;
        }
        .auto-style4 {
            height: 23px;
            width: 297px;
        }
        .auto-style5 {
            width: 302px;
        }
        .auto-style6 {
            height: 23px;
            width: 302px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" DataKeyNames="Serial_no" DataSourceID="SqlDataSourceAdmin" >
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="AdminGuid" HeaderText="AdminGuid" SortExpression="AdminGuid" ReadOnly="True" />
                <asp:BoundField DataField="AdminName" HeaderText="AdminName" SortExpression="AdminName" />
                <asp:BoundField DataField="AdminPassword" HeaderText="AdminPassword" SortExpression="AdminPassword" />
                <asp:BoundField DataField="Serial_no" HeaderText="Serial_no" ReadOnly="True" SortExpression="Serial_no" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceAdmin" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringUser %>" SelectCommand="SELECT * FROM [Admin]" UpdateCommand="UPDATE [Admin] SET [AdminGuid] = @AdminGuid, [AdminName] = @AdminName, [AdminPassword] = @AdminPassword WHERE [Serial_no] = @Serial_no">      
            
            <UpdateParameters>
                <asp:Parameter Name="AdminGuid" Type="String" />
                <asp:Parameter Name="AdminName" Type="String" />
                <asp:Parameter Name="AdminPassword" Type="String" />
                <asp:Parameter Name="Serial_no" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>

        <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminMain.aspx">Admin Home</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Serial No</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxSerialUpdate" runat="server" Width="280px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Administrator Name</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxAdminNameUpdate" runat="server" Width="284px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Administrator Password</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxAdminPasswordUpdate" runat="server" TextMode="Password" Width="284px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btnAdminUpdate" runat="server" Text="Insert" Width="292px" OnClick="btnAdminUpdate_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
            </div>
    </form>
</body>
</html>
