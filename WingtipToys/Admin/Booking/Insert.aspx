﻿<%@ Page Title="BookingInsert" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Insert.aspx.cs" Inherits="WingtipToys.Admin.Booking.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="WingtipToys.Models.Booking" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert Booking</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
						    <asp:DynamicControl Mode="Insert" DataField="DateOfBooking" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="CarModel" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="CarName" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="DateOfWork" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Booking_Description" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="OrderId" 
								DataTypeName="WingtipToys.Models.Order" 
								DataTextField="Phone" 
								DataValueField="OrderId" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="StatusId" 
								DataTypeName="WingtipToys.Models.BookingStatus" 
								DataTextField="StatusName" 
								DataValueField="StatusId" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="TypeId" 
								DataTypeName="WingtipToys.Models.BookingType" 
								DataTextField="BookType" 
								DataValueField="TypeId" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="CustomerCustomerId" 
								DataTypeName="WingtipToys.Models.Customer" 
								DataTextField="Customer_FirstName" 
								DataValueField="CustomerId" 
								UIHint="ForeignKey" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button runat="server" ID="InsertButton" CommandName="Insert" Text="Insert" CssClass="btn btn-primary" />
                            <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                        </div>
					</div>
                </fieldset>
            </InsertItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>
