<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" MasterPageFile="~/BankMasterPage.master"%>

<asp:Content ID="content7" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" BorderColor="#00FFCC" BorderWidth="2px" Height="118px" Width="934px">
            <div class="auto-style1" style="position:absolute; top: 29px; left: 329px;">
                &nbsp;<asp:Label ID="Label1" runat="server" Text="Developer"></asp:Label>
                <span class="newStyle1">
                <br />
                </span>
                <asp:Label ID="Label2" runat="server" Text="Md. Asiful Islam"></asp:Label>
                <span class="newStyle1">
                <br />
                </span>
                <asp:Label ID="Label3" runat="server" Text="asifultamal159@gmail.com"></asp:Label>
            </div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/StartPage.aspx">Home</asp:HyperLink>
        </asp:Panel>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Serial no</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxContactSerial" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Name</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxContactName" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Mobile No</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxContactMobile" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxContactEmail" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxContactEmail" ErrorMessage="Email Must be provided"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxContactEmail" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">If you need any help about our 
                    <br />
                    terms and condition, Please Write Here</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxContactSms" runat="server" Height="206px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxContactSms" ErrorMessage="Write Something"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="btnCntctSubmit" runat="server" OnClick="btnCntctSubmit_Click" Text="Send Message" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
 </asp:content>
<asp:Content ID="Content8" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>

