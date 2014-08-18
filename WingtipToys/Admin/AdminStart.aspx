<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminStart.aspx.cs" Inherits="WingtipToys.Admin.AdminStart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <h1>Administration</h1>

        <asp:LinkButton class="btn btn-primary btn-lg" ID="LinkButton3" runat="server" PostBackUrl="~/Admin/AdminOrders.aspx">Manage Orders </asp:LinkButton>

      <asp:LinkButton class="btn btn-primary btn-lg" ID="LinkButton2" runat="server" PostBackUrl="~/Admin/AdminPage.aspx">Manage Products</asp:LinkButton>

     <asp:LinkButton class="btn btn-primary btn-lg" ID="LinkButton1" runat="server" PostBackUrl="~/Admin/Order/Default.aspx">Manage Orders Pro</asp:LinkButton>

     <asp:LinkButton class="btn btn-primary btn-lg" ID="LinkButton6" runat="server" PostBackUrl="~/Admin/OrderDetail/Default.aspx">Manage Order Details Pro</asp:LinkButton>

    <asp:LinkButton class="btn btn-primary btn-lg" ID="LinkButton4" runat="server" PostBackUrl="~/Admin/Product/Default.aspx">Manage Products Pro</asp:LinkButton>

    <br />
    <br />
     <br />
  
    <asp:LinkButton class="btn btn-primary btn-lg" ID="LinkButton5" runat="server" PostBackUrl="~/Admin/Category/Default.aspx">Manage Products Categories</asp:LinkButton>

    <asp:LinkButton class="btn btn-primary btn-lg" ID="LinkButton8" runat="server" PostBackUrl="~/Admin/Repairs/Default.aspx">Manage Repairs pro</asp:LinkButton>

    <asp:LinkButton class="btn btn-primary btn-lg" ID="LinkButton9" runat="server" PostBackUrl="~/Admin/Installation/Default.aspx">Manage Installations pro</asp:LinkButton>

    <asp:LinkButton class="btn btn-primary btn-lg" ID="LinkButton7" runat="server" PostBackUrl="~/Admin/CreateAdmin.aspx">Create Admin User</asp:LinkButton>
    <br />

</asp:Content>
