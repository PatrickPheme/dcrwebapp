<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckoutStart.aspx.cs" Inherits="WingtipToys.Checkout.CheckoutStart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="form-horizontal">
        <h4>Provide the following details so we can call you concerning your order.</h4>
        <hr />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label">User Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                    CssClass="text-danger" ErrorMessage="The first name field is required." />
            </div>
        </div>
     <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label">Cell Number</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="CellNumber" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="CellNumber"
                    CssClass="text-danger" ErrorMessage="Your cell phone number is required for tracking of your order." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label">Date of Collection of Products</asp:Label>
            <div class="col-md-10">
                <asp:Calendar ID="DateofCollect" runat="server"></asp:Calendar>
            </div>
        </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
            <asp:Button CssClass="btn btn-success ProductListItem"  ID="Button1" runat="server" OnClick="Button1_Click" Text="Review Order" />
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
            </div>
        </div>
    </div>
</asp:Content>
