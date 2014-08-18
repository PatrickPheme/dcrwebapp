<%@ Page Title="OrderList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="WingtipToys.Admin.Order.Default" ViewStateMode="Disabled" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>Orders List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>
    <div>
        <asp:ListView runat="server"
            DataKeyNames="OrderId" 
			ItemType="WingtipToys.Models.Order"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for Orders
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:DynamicControl runat="server" DataField="OrderId" Mode="ReadOnly" UIHint="FieldLabel" />
							</th>
                            <th>
								<asp:DynamicControl runat="server" DataField="Status" Mode="ReadOnly" UIHint="FieldLabel" />
							</th>
                            <th>
								<asp:DynamicControl runat="server" DataField="OrderDate" Mode="ReadOnly" UIHint="FieldLabel" />
							</th>
                            <th>
								<asp:DynamicControl runat="server" DataField="Phone" Mode="ReadOnly" UIHint="FieldLabel" />
							</th>
                            <th>
								<asp:DynamicControl runat="server" DataField="Email" Mode="ReadOnly" UIHint="FieldLabel" />
							</th>
                            <th>
								<asp:DynamicControl runat="server" DataField="Total" Mode="ReadOnly" UIHint="FieldLabel" />
							</th>
                            <th>
								<asp:DynamicControl runat="server" DataField="CustomerCustomerId" Mode="ReadOnly" UIHint="FieldLabel" />
							</th>
                            <th>&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr runat="server" id="itemPlaceholder" />
                    </tbody>
                </table>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
							<td>
								<asp:DynamicControl runat="server" DataField="OrderId" ID="OrderId" Mode="ReadOnly" />
							</td>
							<td>
								
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="OrderDate" ID="OrderDate" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Phone" ID="Phone" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Email" ID="Email" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Total" ID="Total" Mode="ReadOnly" />
							</td>
							<td>
								<%#: Item.Customer.Customer_FirstName %>
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Admin/Order/Edit", Item.OrderId) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Admin/Order/Delete", Item.OrderId) %>' Text="Delete" /> |
                        <a href="../OrderDetail/Default.aspx?OrderId=<%#:Item.OrderId%>">Order Details</a>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
    <asp:Button ID="Button1" CssClass="btn btn-primary" PostBackUrl="../AdminStart.aspx" runat="server" Text="Back to Main Menu" />
</asp:Content>

