<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SanctionLoan.aspx.cs" Inherits="SanctionLoan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 384px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridViewSanctionLoan" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_Card" DataSourceID="SqlDataSourceSactionLoan" OnSelectedIndexChanged="GridViewSanctionLoan_SelectedIndexChanged" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Mobile_No" HeaderText="Mobile_No" SortExpression="Mobile_No" />
                <asp:BoundField DataField="ID_Card" HeaderText="ID_Card" ReadOnly="True" SortExpression="ID_Card" />
                <asp:BoundField DataField="Profession" HeaderText="Profession" SortExpression="Profession" />
                <asp:BoundField DataField="Annual_Income" HeaderText="Annual_Income" SortExpression="Annual_Income" />
                <asp:BoundField DataField="Reference" HeaderText="Reference" SortExpression="Reference" />
                <asp:BoundField DataField="Ref_Contact_No" HeaderText="Ref_Contact_No" SortExpression="Ref_Contact_No" />
                <asp:BoundField DataField="Relation_With_Reference" HeaderText="Relation_With_Reference" SortExpression="Relation_With_Reference" />
                <asp:BoundField DataField="Refer_Address" HeaderText="Refer_Address" SortExpression="Refer_Address" />
                <asp:BoundField DataField="Loan_type" HeaderText="Loan_type" SortExpression="Loan_type" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceSactionLoan" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringUser %>" SelectCommand="SELECT * FROM [Loan] WHERE ([ID_Card] = @ID_Card)" DeleteCommand="DELETE FROM [Loan] WHERE [ID_Card] = @ID_Card" InsertCommand="INSERT INTO [Loan] ([Name], [Address], [Mobile_No], [ID_Card], [Profession], [Annual_Income], [Reference], [Ref_Contact_No], [Relation_With_Reference], [Refer_Address], [Loan_type], [Amount], [Status]) VALUES (@Name, @Address, @Mobile_No, @ID_Card, @Profession, @Annual_Income, @Reference, @Ref_Contact_No, @Relation_With_Reference, @Refer_Address, @Loan_type, @Amount, @Status)" UpdateCommand="UPDATE [Loan] SET [Name] = @Name, [Address] = @Address, [Mobile_No] = @Mobile_No, [Profession] = @Profession, [Annual_Income] = @Annual_Income, [Reference] = @Reference, [Ref_Contact_No] = @Ref_Contact_No, [Relation_With_Reference] = @Relation_With_Reference, [Refer_Address] = @Refer_Address, [Loan_type] = @Loan_type, [Amount] = @Amount, [Status] = @Status WHERE [ID_Card] = @ID_Card">
            <DeleteParameters>
                <asp:Parameter Name="ID_Card" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Mobile_No" Type="Int32" />
                <asp:Parameter Name="ID_Card" Type="Int32" />
                <asp:Parameter Name="Profession" Type="String" />
                <asp:Parameter Name="Annual_Income" Type="Int32" />
                <asp:Parameter Name="Reference" Type="String" />
                <asp:Parameter Name="Ref_Contact_No" Type="Int32" />
                <asp:Parameter Name="Relation_With_Reference" Type="String" />
                <asp:Parameter Name="Refer_Address" Type="String" />
                <asp:Parameter Name="Loan_type" Type="String" />
                <asp:Parameter Name="Amount" Type="Int32" />
                <asp:Parameter Name="Status" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBoxSction_ID" Name="ID_Card" PropertyName="Text" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Mobile_No" Type="Int32" />
                <asp:Parameter Name="Profession" Type="String" />
                <asp:Parameter Name="Annual_Income" Type="Int32" />
                <asp:Parameter Name="Reference" Type="String" />
                <asp:Parameter Name="Ref_Contact_No" Type="Int32" />
                <asp:Parameter Name="Relation_With_Reference" Type="String" />
                <asp:Parameter Name="Refer_Address" Type="String" />
                <asp:Parameter Name="Loan_type" Type="String" />
                <asp:Parameter Name="Amount" Type="Int32" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="ID_Card" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
        <table class="auto-style2">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>National ID Number</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxSction_ID" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="ButtonShowSanctionLoan" runat="server" OnClick="ButtonShowSanctionLoan_Click" Text="Show Loan Status" />
                </td>
                <td>
                    <asp:Button ID="ButtonSanctionLoan" runat="server" OnClick="ButtonSanctionLoan_Click" Text="Sanction Loan" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
