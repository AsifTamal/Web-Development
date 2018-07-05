<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactDatabase.aspx.cs" Inherits="ContactDatabase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 328px">
    
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminMain.aspx">Admin Home</asp:HyperLink>
        <br />
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Serial_No" DataSourceID="SqlDataSourceContact">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Serial_No" HeaderText="Serial_No" ReadOnly="True" SortExpression="Serial_No" />
                <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
                <asp:BoundField DataField="ContactMobile" HeaderText="ContactMobile" SortExpression="ContactMobile" />
                <asp:BoundField DataField="ContactEmail" HeaderText="ContactEmail" SortExpression="ContactEmail" />
                <asp:BoundField DataField="ContactSms" HeaderText="ContactSms" SortExpression="ContactSms" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceContact" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringUser %>" DeleteCommand="DELETE FROM [Contact] WHERE [Serial_No] = @Serial_No" SelectCommand="SELECT * FROM [Contact]" UpdateCommand="UPDATE [Contact] SET [ContactName] = @ContactName, [ContactMobile] = @ContactMobile, [ContactEmail] = @ContactEmail, [ContactSms] = @ContactSms WHERE [Serial_No] = @Serial_No">
            <DeleteParameters>
                <asp:Parameter Name="Serial_No" Type="Int32" />
            </DeleteParameters>
           
            <UpdateParameters>
                <asp:Parameter Name="ContactName" Type="String" />
                <asp:Parameter Name="ContactMobile" Type="Int32" />
                <asp:Parameter Name="ContactEmail" Type="String" />
                <asp:Parameter Name="ContactSms" Type="String" />
                <asp:Parameter Name="Serial_No" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
