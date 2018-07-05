<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adduser.aspx.cs" Inherits="Adduser" MasterPageFile="~/BankMasterPage.master"%>

<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/StartPage.aspx">Home</asp:HyperLink>
                </td>
                <td class="auto-style3"><strong>Registration Page</strong></td>
                <td class="auto-style6">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UserData.aspx">See Registered Customer</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Branch Name</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownListBranch" runat="server" Height="17px" Width="408px">
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownListBranch" ErrorMessage="Select Branch Name" InitialValue="Select Branch"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Account No.</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxAccno" runat="server" Width="400px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxAccno" ErrorMessage="Insert Account No."></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Full Name(In Bangla)</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxNameB" runat="server" Width="400px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxNameB" ErrorMessage="Insert Name in Bangla"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Full Name(In English)</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxNameE" runat="server" Width="400px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxNameE" ErrorMessage="insert Name in English"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Father&#39;s Name</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxFather" runat="server" Width="400px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxFather" ErrorMessage="Entrre Father"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Mother&#39;s Name</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxMother" runat="server" Width="400px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Parmanent Address</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxAddress" runat="server" Width="400px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxAddress" ErrorMessage="Permanent address Needed"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Nationality</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxNationality" runat="server" Width="400px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxNationality" ErrorMessage="Nationality Needed"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Religion</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownListReligion" runat="server" Width="407px">
                        <asp:ListItem>Select Religion</asp:ListItem>
                        <asp:ListItem>Islam</asp:ListItem>
                        <asp:ListItem>Hindu</asp:ListItem>
                        <asp:ListItem>Kristian</asp:ListItem>
                        <asp:ListItem>Buddah</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownListReligion" ErrorMessage="Select religion" InitialValue="Select Religion"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">National ID Card No.</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxIDcard" runat="server" Width="400px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">City</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBoxCity" runat="server" Width="400px"></asp:TextBox>
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style2">State</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownListState" runat="server" Width="409px">
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownListState" ErrorMessage="Select State" InitialValue="Select State"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Gender</td>
                <td class="auto-style4">
                    <asp:RadioButtonList ID="RadioButtonListGender" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="RadioButtonListGender" ErrorMessage="Select Gender"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Death of Birth</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxBirth" runat="server" TextMode="Date" Width="399px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Mobile No.</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxMobile" runat="server" Width="400px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Security Question</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownListQuestion" runat="server" Height="16px" Width="409px">
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
                    <asp:TextBox ID="TextBoxAnswar" runat="server" Width="400px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Account type</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownListAcctype" runat="server" Width="409px">
                        <asp:ListItem>Select type</asp:ListItem>
                        <asp:ListItem>Saving</asp:ListItem>
                        <asp:ListItem>Current</asp:ListItem>
                        <asp:ListItem>Fixed</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="DropDownListAcctype" ErrorMessage="Need Account type" InitialValue="Select type"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Deposite Amount</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxUserDeposite" runat="server" Width="397px"></asp:TextBox>
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
                    <asp:Button ID="ButtonRegister" runat="server" Text="Registration" Width="152px" OnClick="ButtonRegister_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
  
    </asp:Content>