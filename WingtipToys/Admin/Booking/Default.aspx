<%@ Page Title="BookingList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="WingtipToys.Admin.Booking.Default" ViewStateMode="Disabled" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>Bookings List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>
    <div>
        <asp:ListView runat="server"
            DataKeyNames="JobId" 
			ItemType="WingtipToys.Models.Booking"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for Bookings
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table table-striped table-hover ">
                    <thead>
                        <tr>
                            <th>
								<asp:DynamicControl runat="server" DataField="JobId" Mode="ReadOnly" UIHint="FieldLabel" />
							</th>
                            <th>
								<asp:DynamicControl runat="server" DataField="DateOfBooking" Mode="ReadOnly" UIHint="FieldLabel" />
							</th>
                            <th>
								<asp:DynamicControl runat="server" DataField="CarModel" Mode="ReadOnly" UIHint="FieldLabel" />
							</th>
                            <th>
								<asp:DynamicControl runat="server" DataField="CarName" Mode="ReadOnly" UIHint="FieldLabel" />
							</th>
                            <th>
								<asp:DynamicControl runat="server" DataField="DateOfWork" Mode="ReadOnly" UIHint="FieldLabel" />
							</th>
                            <th>
								<asp:DynamicControl runat="server" DataField="Booking_Description" Mode="ReadOnly" UIHint="FieldLabel" />
							</th>
                            <th>
								<asp:DynamicControl runat="server" DataField="OrderId" Mode="ReadOnly" UIHint="FieldLabel" />
							</th>
                            <th>
								<asp:DynamicControl runat="server" DataField="StatusId" Mode="ReadOnly" UIHint="FieldLabel" />
							</th>
                            <th>
								<asp:DynamicControl runat="server" DataField="TypeId" Mode="ReadOnly" UIHint="FieldLabel" />
							</th>
                            <th>
								<asp:DynamicControl runat="server" DataField="CustomerCustomerId" Mode="ReadOnly" UIHint="FieldLabel" />
							</th>
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
								<asp:DynamicControl runat="server" DataField="JobId" ID="JobId" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="DateOfBooking" ID="DateOfBooking" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="CarModel" ID="CarModel" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="CarName" ID="CarName" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="DateOfWork" ID="DateOfWork" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Booking_Description" ID="Booking_Description" Mode="ReadOnly" />
							</td>
							<td></td>
							<td>
								<%#: Item.BookStatus.StatusName %>
							</td>
							<td>
								<%#: Item.BookType.BookType %>
							</td>
							<td>
								<%#: Item.Customer.Customer_FirstName %>
							</td>
                    
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Admin/Booking/Edit", Item.JobId) %>' Text="" ><span class="btn btn-info btn-sm">Edit</span></asp:HyperLink>| 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Admin/Booking/Delete", Item.JobId) %>' Text="" ><span class="btn btn-primary btn-sm">Delete</span></asp:HyperLink>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

