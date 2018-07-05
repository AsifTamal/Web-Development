<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManagerMain.aspx.cs" Inherits="ManagerMain" MasterPageFile="~/BankMasterPage2.master"%>
<asp:Content ID="content6" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ManagerMain.aspx">Home</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
    </div>

     <div id="linkList2">      
        <h3 class="menu"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Catagories</span></h3>
        <ul >
          <li><a href="Adduser.aspx">Registration</a>&nbsp; </li><br>
          
          <li><a href="Deposite.aspx">Deposite</a>&nbsp; </li><br>
          <li><a href="LoanRequest.aspx">Bank loan</a>&nbsp; </li><br>
         <li><a href="UpdateUserAccNo.aspx">Update Customer</a>&nbsp; </li><br>
          <li><a href="BalanceTransfer.aspx">Balance Transfer</a>&nbsp; </li><br>
          <li><a href="UserAccDetails.aspx">Account Details</a>&nbsp; </li><br>
          <li><a href="CloseUserAcc.aspx">Close Account</a>&nbsp; </li><br>
          <li><a href="Withdraw.aspx">Withdraw</a>&nbsp; </li><br>
          <li><a href="SanctionLoan.aspx">Sanction Loan</a>&nbsp; </li><br>
          <li><a href="#">Ceramics</a>&nbsp; </li><br>
          <li><a href="#">Kitchen Materials</a>&nbsp; </li><br>
          <li><a href="#">Ceramics</a>&nbsp; </li><br>
</ul>

</div>
   
</asp:Content>
<asp:Content ID="Content7" runat="server" contentplaceholderid="ContentPlaceHolder2">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="LabelManager" runat="server"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="ButtonMLogout" runat="server" OnClick="ButtonMLogout_Click" Text="Logout" />
</asp:Content>
