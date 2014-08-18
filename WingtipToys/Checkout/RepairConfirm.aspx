<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RepairConfirm.aspx.cs" Inherits="WingtipToys.Checkout.RepairConfirm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Repair Booking Complete</h1>
    <p></p>
    <h3>Job Number:</h3> <asp:Label ID="TransactionId" runat="server"></asp:Label>
    <p></p>
    <h3>Thank You!</h3>
    <p></p>
    <asp:LinkButton ID="LinkButton1" class="btn btn-success" runat="server" PostBackUrl="../ProductList.aspx">Go Shopping</asp:LinkButton>
</asp:Content>
