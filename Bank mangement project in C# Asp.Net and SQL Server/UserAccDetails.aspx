<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserAccDetails.aspx.cs" Inherits="UserAccDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:TextBox ID="TextBoxUserDetails" runat="server" Width="207px"></asp:TextBox>
                    <asp:Button ID="btnUserDetails" runat="server" Text="Show Details" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Accno" DataSourceID="SqlDataSourceUserDetails">
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
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceUserDetails" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringUser %>" SelectCommand="SELECT * FROM [Registration] WHERE ([Accno] = @Accno)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBoxUserDetails" Name="Accno" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
