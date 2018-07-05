<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoanCustomer.aspx.cs" Inherits="LoanCustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
            width: 238px;
        }
        .auto-style3 {
            width: 318px;
            text-align: center;
        }
        .auto-style4 {
            width: 238px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">Customer Information For Loan</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ManagerMain.aspx">Manager Home</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Name</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxLoanUserName" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxLoanUserName" ErrorMessage="Must Enter Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Address</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxLoanUserAddress" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Mobile No</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxLoanUserMobile" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">National ID No.</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxLoanUserNationalID" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxLoanUserNationalID" ErrorMessage="National Id Card No Needed"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Profession</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownListLoanUserProfession" runat="server" Height="16px" Width="307px">
                        <asp:ListItem>Select profession</asp:ListItem>
                        <asp:ListItem>Job</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                        <asp:ListItem>Teacher</asp:ListItem>
                        <asp:ListItem>HouseWife</asp:ListItem>
                        <asp:ListItem>Salesman</asp:ListItem>
                        <asp:ListItem>Farmer</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Annual Income</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxLoanUserIncome" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Reference</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxLoanUserRefName" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxLoanUserRefName" ErrorMessage="Need A Reference"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Reference Contact No</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxLoanUserRefContact" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Relation With Reference</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownListLoanUserRefRelation" runat="server" style="margin-left: 0px" Width="305px">
                        <asp:ListItem>Select Relation</asp:ListItem>
                        <asp:ListItem>family Member</asp:ListItem>
                        <asp:ListItem>Office colegue</asp:ListItem>
                        <asp:ListItem>Neighbor</asp:ListItem>
                        <asp:ListItem>Cousin</asp:ListItem>
                        <asp:ListItem>Gardian</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Reference Address</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxLoanUserRefAddress" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxLoanUserRefAddress" ErrorMessage="Ref Address Needed"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Loan Type</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownListLoanType" runat="server" Height="16px" Width="305px">
                        <asp:ListItem>Select LoanType</asp:ListItem>
                        <asp:ListItem>OneTime</asp:ListItem>
                        <asp:ListItem>Monthly</asp:ListItem>
                        <asp:ListItem>Annually</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListLoanType" ErrorMessage="Loan type needed"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Amount</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxLoanAmount" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxLoanAmount" ErrorMessage="Amount Must be Provided"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;<asp:Button ID="BtnReqstLoan" runat="server" Text="Request For Loan" OnClick="Button1_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
