<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserData.aspx.cs" Inherits="UserData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Accno" DataSourceID="SqlDataSourceUserData" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
                <asp:BoundField DataField="Accno" HeaderText="Accno" ReadOnly="True" SortExpression="Accno" />
                <asp:BoundField DataField="NameB" HeaderText="NameB" SortExpression="NameB" />
                <asp:BoundField DataField="NameE" HeaderText="NameE" SortExpression="NameE" />
                <asp:BoundField DataField="Father" HeaderText="Father" SortExpression="Father" />
                <asp:BoundField DataField="Mother" HeaderText="Mother" SortExpression="Mother" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Nationality" HeaderText="Nationality" SortExpression="Nationality" />
                <asp:BoundField DataField="Religion" HeaderText="Religion" SortExpression="Religion" />
                <asp:BoundField DataField="Idcard" HeaderText="Idcard" SortExpression="Idcard" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday" />
                <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                <asp:BoundField DataField="Answar" HeaderText="Answar" SortExpression="Answar" />
                <asp:BoundField DataField="Acctype" HeaderText="Acctype" SortExpression="Acctype" />
                <asp:BoundField DataField="Deposite" HeaderText="Deposite" SortExpression="Deposite" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceUserData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringUser %>" SelectCommand="SELECT * FROM [Registration]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
