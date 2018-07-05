<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManagerDataBase.aspx.cs" Inherits="ManagerDataBase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 250px;
        }
         
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceManager" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" DataKeyNames="Serial_no">
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                <asp:BoundField DataField="Serial_no" HeaderText="Serial_no" SortExpression="Serial_no" ReadOnly="True" />
                <asp:BoundField DataField="Guid" HeaderText="Guid" SortExpression="Guid" ReadOnly="True" />
                <asp:BoundField DataField="ManagerName" HeaderText="ManagerName" SortExpression="ManagerName" />
                <asp:BoundField DataField="ManagerPassword" HeaderText="ManagerPassword" SortExpression="ManagerPassword" />
                <asp:BoundField DataField="ManagerBranch" HeaderText="ManagerBranch" SortExpression="ManagerBranch" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceManager" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringUser %>" SelectCommand="SELECT * FROM [Manager]" DeleteCommand="DELETE FROM [Manager] WHERE [Serial_no] = @Serial_no" UpdateCommand="UPDATE [Manager] SET [Guid] = @Guid, [ManagerName] = @ManagerName, [ManagerPassword] = @ManagerPassword, [ManagerBranch] = @ManagerBranch WHERE [Serial_no] = @Serial_no">
            <DeleteParameters>
                <asp:Parameter Name="Serial_no" Type="Int32" />
            </DeleteParameters>
            
            <UpdateParameters>
                <asp:Parameter Name="Guid" Type="String" />
                <asp:Parameter Name="ManagerName" Type="String" />
                <asp:Parameter Name="ManagerPassword" Type="String" />
                <asp:Parameter Name="ManagerBranch" Type="String" />
                <asp:Parameter Name="Serial_no" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
   
    </div>
  
        
        <div>
              <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Serial No</td>
                <td>
                    <asp:TextBox ID="TextBoxMSerial" runat="server" Width="280px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Manager Name</td>
                <td>
                    <asp:TextBox ID="TextBoxManagerName" runat="server" Width="282px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Manager Password</td>
                <td>
                    <asp:TextBox ID="TextBoxManagerPassword" runat="server" Width="281px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Manager Branch</td>
                <td>
                    <asp:DropDownList ID="DropDownListManagerBranch" runat="server" Width="287px">
                        <asp:ListItem>Select Branch</asp:ListItem>
                        <asp:ListItem>Dhaka</asp:ListItem>
                        <asp:ListItem>Chittagong</asp:ListItem>
                        <asp:ListItem>Rajshahi</asp:ListItem>
                        <asp:ListItem>Khulna</asp:ListItem>
                        <asp:ListItem>Sylhet</asp:ListItem>
                        <asp:ListItem>Borisal</asp:ListItem>
                        <asp:ListItem>Rangpur</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="btnManagerInsert" runat="server" Text="Insert" Width="86px" OnClick="btnManagerInsert_Click" />
&nbsp;
                    <asp:Button ID="ButtonManagerUpdate" runat="server" Text="Update" Width="87px" />
&nbsp;&nbsp;
                    <asp:Button ID="ButtonManagerDelete" runat="server" Text="Delete" Width="94px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminMain.aspx">Go to administrator Home</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
      </div>
    </form>
</body>
</html>
