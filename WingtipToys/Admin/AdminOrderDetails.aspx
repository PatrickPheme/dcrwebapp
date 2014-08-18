<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminOrderDetails.aspx.cs" Inherits="WingtipToys.Admin.AdminOrderDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <h2>Order Details for Order Number : <asp:Label Font-Size="XX-Large" ID="Label1" runat="server" Text=""></asp:Label></h2> 
                 <asp:ListView ID="OrderDetail" ItemType="WingtipToys.Models.OrderDetail" SelectMethod="GetOrderDetail" DataKeyNames="OrderId" runat="server">
                     
     <LayoutTemplate>
          <table class ="table" cellpadding="2"  ID="tbl1" runat="server">
               <tr runat="server">

                    <th runat="server">Order Id</th>
                    <th runat="server">Product Name</th>
                    <th runat="server">Price</th>
                    <th runat="server">Quantity</th>
                    <th runat="server">Total Price</th>
               </tr>
               <tr runat="server" id="itemPlaceholder" />
          </table>

        
     </LayoutTemplate>
    
     <ItemTemplate>
          <tr runat="server">
               <td>
                    <asp:Label ID="VendorIDLabel" runat="server" Text='<%# Item.OrderId %>' />
               </td>
               <td>
                    <asp:Label ID="AccountNumberLabel" runat="server" Text='<%# Item.ProductProductID%>' />
               </td>
               <td>
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Item.UnitPrice %>' />
               </td>
               <td>
                    <asp:Label ID="PreferredCheckBox" runat="server" Text='<%# Item.Quantity%>' />
               </td>
              <td>
                  <asp:Label ID="Total" runat="server" Text='<%# Item.TotalPrice%>' />
              </td>
          </tr>
     </ItemTemplate>
</asp:ListView>
</asp:Content>
