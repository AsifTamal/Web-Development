<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminMain.aspx.cs" Inherits="AdminMain" MasterPageFile="~/BankMasterPage2.master"%>
<asp:Content ID="content5" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div>
  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
    </div>

      
    <div id="linkList2">      
        <h3 class="menu"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Catagories</span></h3>
        <ul >
          <li><a href="Adduser.aspx">Registration</a>&nbsp; </li><br>
          
          <li><a href="AdminDatabase.aspx">Administrator Details</a>&nbsp; </li><br>
          <li><a href="ManagerDataBase.aspx">Manager Details</a>&nbsp; </li><br>
       <li><a href="UpdateUserAccNo.aspx">UpdateCustomer</a>&nbsp; </li><br>
              
          <li><a href="LoanData.aspx">Pending Loan Requests</a>&nbsp; </li><br>
          <li><a href="#"></a>&nbsp; </li><br>
          <li><a href="#">Balance Transfer</a>&nbsp; </li><br>
          <li><a href="UserAccDetails.aspx">Account Details</a>&nbsp; </li><br>
          <li><a href="CloseUserAcc.aspx">Close Account</a>&nbsp; </li><br>
          <li><a href="ContactDatabase.aspx">Customer Complain</a>&nbsp; </li><br>
          <li><a href="#">Kitchen Materials</a>&nbsp; </li><br>
          <li><a href="#">Ceramics</a>&nbsp; </li><br>
</ul>

</div>

    
</asp:Content>
<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Font-Size="40px" Height="50px" Width="262px"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="ButtonAdminLogout" runat="server" OnClick="ButtonAdminLogout_Click" Text="Logout" style="position:absolute; top: 93px; left: 1110px;"/>
</asp:Content>
