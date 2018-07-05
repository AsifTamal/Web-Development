<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CloseUserAcc.aspx.cs" Inherits="CloseUserAcc" %>

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
    <div>
    
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminMain.aspx" style="text-align: right">Admin Home</asp:HyperLink>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:TextBox ID="TextBoxCloseAcc" runat="server"></asp:TextBox>
                    <asp:Button ID="btnCloseAcc" runat="server" OnClick="btnCloseAcc_Click" Text="Search Account" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Accno" DataSourceID="SqlDataSourceCloseAcc">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" />
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
                    <asp:SqlDataSource ID="SqlDataSourceCloseAcc" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringUser %>" DeleteCommand="DELETE FROM [Registration] WHERE [Accno] = @Accno" InsertCommand="INSERT INTO [Registration] ([Branch], [Accno], [NameB], [NameE], [Father], [Mother], [Address], [Nationality], [Religion], [Idcard], [City], [State], [Gender], [Mobile], [Birthday], [Question], [Answar], [Acctype]) VALUES (@Branch, @Accno, @NameB, @NameE, @Father, @Mother, @Address, @Nationality, @Religion, @Idcard, @City, @State, @Gender, @Mobile, @Birthday, @Question, @Answar, @Acctype)" SelectCommand="SELECT * FROM [Registration] WHERE ([Accno] = @Accno)" UpdateCommand="UPDATE [Registration] SET [Branch] = @Branch, [NameB] = @NameB, [NameE] = @NameE, [Father] = @Father, [Mother] = @Mother, [Address] = @Address, [Nationality] = @Nationality, [Religion] = @Religion, [Idcard] = @Idcard, [City] = @City, [State] = @State, [Gender] = @Gender, [Mobile] = @Mobile, [Birthday] = @Birthday, [Question] = @Question, [Answar] = @Answar, [Acctype] = @Acctype WHERE [Accno] = @Accno">
                        <DeleteParameters>
                            <asp:Parameter Name="Accno" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Branch" Type="String" />
                            <asp:Parameter Name="Accno" Type="Int32" />
                            <asp:Parameter Name="NameB" Type="String" />
                            <asp:Parameter Name="NameE" Type="String" />
                            <asp:Parameter Name="Father" Type="String" />
                            <asp:Parameter Name="Mother" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="Nationality" Type="String" />
                            <asp:Parameter Name="Religion" Type="String" />
                            <asp:Parameter Name="Idcard" Type="String" />
                            <asp:Parameter Name="City" Type="String" />
                            <asp:Parameter Name="State" Type="String" />
                            <asp:Parameter Name="Gender" Type="String" />
                            <asp:Parameter Name="Mobile" Type="String" />
                            <asp:Parameter Name="Birthday" Type="String" />
                            <asp:Parameter Name="Question" Type="String" />
                            <asp:Parameter Name="Answar" Type="String" />
                            <asp:Parameter Name="Acctype" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBoxCloseAcc" Name="Accno" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Branch" Type="String" />
                            <asp:Parameter Name="NameB" Type="String" />
                            <asp:Parameter Name="NameE" Type="String" />
                            <asp:Parameter Name="Father" Type="String" />
                            <asp:Parameter Name="Mother" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="Nationality" Type="String" />
                            <asp:Parameter Name="Religion" Type="String" />
                            <asp:Parameter Name="Idcard" Type="String" />
                            <asp:Parameter Name="City" Type="String" />
                            <asp:Parameter Name="State" Type="String" />
                            <asp:Parameter Name="Gender" Type="String" />
                            <asp:Parameter Name="Mobile" Type="String" />
                            <asp:Parameter Name="Birthday" Type="String" />
                            <asp:Parameter Name="Question" Type="String" />
                            <asp:Parameter Name="Answar" Type="String" />
                            <asp:Parameter Name="Acctype" Type="String" />
                            <asp:Parameter Name="Accno" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
