<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminOrders.aspx.cs" Inherits="WingtipToys.Admin.AdminOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>This is where orders are</h1>
    
             <asp:ListView ID="VendorsListView" ItemType="WingtipToys.Models.Order" SelectMethod="GetOrders" DataKeyNames="OrderId" runat="server">
    
     <LayoutTemplate>
          <table cellpadding="2" width="640px" border="1" ID="tbl1" runat="server">
               <tr runat="server" style="background-color: #98FB98">
                    <th runat="server">Order Id</th>
                    <th runat="server">Customer Name</th>
                    <th runat="server">Phone</th>
                    <th runat="server">Order Date</th>
                    <th runat="server">Details</th>
               </tr>
               <tr runat="server" id="itemPlaceholder" />
          </table>

          <asp:DataPager ID="DataPager1" runat="server">
               <Fields>
                    <asp:NumericPagerField />
               </Fields>
          </asp:DataPager>
     </LayoutTemplate>
    
     <ItemTemplate>
          <tr runat="server">
               <td>
                    <asp:Label ID="VendorIDLabel" runat="server" Text='<%# Item.OrderId %>' />
               </td>
               <td>
                    <asp:Label ID="AccountNumberLabel" runat="server" Text='<%# Item.Customer.Customer_FirstName%>' />
               </td>
               <td>
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Item.Phone %>' />
               </td>
               <td>
                    <asp:Label ID="PreferredCheckBox" runat="server" Text='<%# Item.OrderDate %>' />
               </td>
              <td>
                 <a href="AdminOrderDetails.aspx?OrderId=<%#:Item.OrderId%>">Order Details</a>
              </td>
          </tr>
     </ItemTemplate>
</asp:ListView>
    
       
</asp:Content>
