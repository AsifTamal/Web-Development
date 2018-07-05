<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoanData.aspx.cs" Inherits="LoanData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 364px;
        }
        .auto-style3 {
            width: 298px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_Card" DataSourceID="SqlDataSourceLoan" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" ShowDeleteButton="True" />
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
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceLoan" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringUser %>" DeleteCommand="DELETE FROM [Loan] WHERE [ID_Card] = @ID_Card" SelectCommand="SELECT * FROM [Loan]" InsertCommand="INSERT INTO [Loan] ([Name], [Address], [Mobile_No], [ID_Card], [Profession], [Annual_Income], [Reference], [Ref_Contact_No], [Relation_With_Reference], [Refer_Address], [Loan_type], [Amount], [Status]) VALUES (@Name, @Address, @Mobile_No, @ID_Card, @Profession, @Annual_Income, @Reference, @Ref_Contact_No, @Relation_With_Reference, @Refer_Address, @Loan_type, @Amount, @Status)" UpdateCommand="UPDATE [Loan] SET [Name] = @Name, [Address] = @Address, [Mobile_No] = @Mobile_No, [Profession] = @Profession, [Annual_Income] = @Annual_Income, [Reference] = @Reference, [Ref_Contact_No] = @Ref_Contact_No, [Relation_With_Reference] = @Relation_With_Reference, [Refer_Address] = @Refer_Address, [Loan_type] = @Loan_type, [Amount] = @Amount, [Status] = @Status WHERE [ID_Card] = @ID_Card">
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
        <table class="auto-style1" id="LoanTable">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminMain.aspx">Admin home</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Name</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBoxLoanShowName" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Address</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBoxLoanShowAddress" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Mobile No</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBoxLoanShowMobile" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">National ID</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBoxLoanShowID" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Profession</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Annual Income</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBoxLoanShowIncome" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Reference</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBoxLoanShowRef" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Ref Contact</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBoxLoanShowRefContact" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Relation with Ref</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Refer Address</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBoxLoanShowRefAddress" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Loan Type</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList3" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Amount</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBoxLoanShowAmount" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Status</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBoxLoanStatus" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:Button ID="BtnAccept" runat="server" Text="Accept" OnClick="BtnAccept_Click" />
                    <asp:Button ID="BtnReject" runat="server" Text="Reject" OnClick="BtnReject_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
