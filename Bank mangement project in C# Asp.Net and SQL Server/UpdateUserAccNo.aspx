<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateUserAccNo.aspx.cs" Inherits="UpdateUserAccNo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 322px;
            text-align: right;
        }
        .auto-style3 {
            width: 322px;
            text-align: right;
        }
        .auto-style7 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Account No</td>
                <td>
                    <asp:TextBox ID="TextBoxUpdateAccNo" runat="server" Width="184px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Show" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Accno" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
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
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringUser %>" DeleteCommand="DELETE FROM [Registration] WHERE [Accno] = @Accno" InsertCommand="INSERT INTO [Registration] ([Branch], [Accno], [NameB], [NameE], [Father], [Mother], [Address], [Nationality], [Religion], [Idcard], [City], [State], [Gender], [Mobile], [Birthday], [Question], [Answar], [Acctype], [Deposite]) VALUES (@Branch, @Accno, @NameB, @NameE, @Father, @Mother, @Address, @Nationality, @Religion, @Idcard, @City, @State, @Gender, @Mobile, @Birthday, @Question, @Answar, @Acctype, @Deposite)" SelectCommand="SELECT * FROM [Registration] WHERE ([Accno] = @Accno)" UpdateCommand="UPDATE [Registration] SET [Branch] = @Branch, [NameB] = @NameB, [NameE] = @NameE, [Father] = @Father, [Mother] = @Mother, [Address] = @Address, [Nationality] = @Nationality, [Religion] = @Religion, [Idcard] = @Idcard, [City] = @City, [State] = @State, [Gender] = @Gender, [Mobile] = @Mobile, [Birthday] = @Birthday, [Question] = @Question, [Answar] = @Answar, [Acctype] = @Acctype, [Deposite] = @Deposite WHERE [Accno] = @Accno">
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
                <asp:Parameter Name="Deposite" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBoxUpdateAccNo" Name="Accno" PropertyName="Text" Type="Int32" />
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
                <asp:Parameter Name="Deposite" Type="Int32" />
                <asp:Parameter Name="Accno" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
   
    
    <table class="auto-style1">
        <tr>
                <td class="auto-style5"></td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style6">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UserData.aspx">See Registered Customer</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Branch Name</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownListBranchUpdate" runat="server" Height="17px" Width="408px">
                        <asp:ListItem Value="Select Branch">--Select Branch--</asp:ListItem>
                        <asp:ListItem>Dhaka</asp:ListItem>
                        <asp:ListItem>Chittagong</asp:ListItem>
                        <asp:ListItem>Rajshahi</asp:ListItem>
                        <asp:ListItem>Khulna</asp:ListItem>
                        <asp:ListItem>Sylhet</asp:ListItem>
                        <asp:ListItem>Borisal</asp:ListItem>
                        <asp:ListItem>Rongpur</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Account No.</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxAccnoUpdate" runat="server" Width="400px" Visible="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Full Name(In Bangla)</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxNameBUpdate" runat="server" Width="400px" Visible="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Full Name(In English)</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxNameEUpdate" runat="server" Width="400px" Visible="False" Wrap="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Father&#39;s Name</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxFatherUpdate" runat="server" Width="400px" Visible="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Mother&#39;s Name</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxMotherUpdate" runat="server" Width="400px" Visible="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Parmanent Address</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxAddressUpdate" runat="server" Width="400px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Nationality</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxNationalityUpdate" runat="server" Width="400px" Visible="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Religion</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownListReligionUpdate" runat="server" Width="407px">
                        <asp:ListItem>Select Religion</asp:ListItem>
                        <asp:ListItem>Islam</asp:ListItem>
                        <asp:ListItem>Hindu</asp:ListItem>
                        <asp:ListItem>Kristian</asp:ListItem>
                        <asp:ListItem>Buddah</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">National ID Card No.</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxIDcardUpdate" runat="server" Width="400px" Visible="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">City</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBoxCityUpdate" runat="server" Width="400px"></asp:TextBox>
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style2">State</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownListStateUpdate" runat="server" Width="409px">
                        <asp:ListItem>Select State</asp:ListItem>
                        <asp:ListItem>Dhaka</asp:ListItem>
                        <asp:ListItem>Chittagong</asp:ListItem>
                        <asp:ListItem>Rajshahi</asp:ListItem>
                        <asp:ListItem>Khulna</asp:ListItem>
                        <asp:ListItem>Barisal</asp:ListItem>
                        <asp:ListItem>Rangpur</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Gender</td>
                <td class="auto-style4">
                    <asp:RadioButtonList ID="RadioButtonListGenderUpdate" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Death of Birth</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxBirthUpdate" runat="server" TextMode="Date" Width="399px" Visible="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Mobile No.</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxMobileUpdate" runat="server" Width="400px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Security Question</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownListQuestionUpdate" runat="server" Height="16px" Width="409px">
                        <asp:ListItem>Select Question</asp:ListItem>
                        <asp:ListItem>What is your Pet&#39;s Name?</asp:ListItem>
                        <asp:ListItem>What is your bird&#39;s Name?</asp:ListItem>
                        <asp:ListItem>What is your Animal&#39;s Name?</asp:ListItem>
                        <asp:ListItem>What is your GirlFrnd&#39;s Name?</asp:ListItem>
                        <asp:ListItem>What is your Monkey&#39;s Name?</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Answar</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxAnswarUpdate" runat="server" Width="400px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Account type</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownListAcctypeUpdate" runat="server" Width="409px" Visible="False">
                        <asp:ListItem>Select type</asp:ListItem>
                        <asp:ListItem>Saving</asp:ListItem>
                        <asp:ListItem>Current</asp:ListItem>
                        <asp:ListItem>Fixed</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Deposite Amount</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxUserDepositeUpdate" runat="server" Width="397px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="ButtonUpdate" runat="server" Text="Update Customer" Width="152px" OnClick="ButtonUpdate_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
    </table>
        
     </form>
</body>
</html>
