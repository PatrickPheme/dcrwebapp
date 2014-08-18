<%@ Page Title="OrderDetailDelete" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Delete.aspx.cs" Inherits="WingtipToys.Admin.OrderDetail.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this OrderDetail?</h3>
        <asp:FormView runat="server"
            ItemType="WingtipToys.Models.OrderDetail" DataKeyNames="OrderDetailId"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the OrderDetail with OrderDetailId <%: Request.QueryString["OrderDetailId"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete OrderDetail</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong><asp:DynamicControl runat="server" DataField="OrderDetailId" Mode="ReadOnly" UIHint="FieldLabel" /></strong>
								</div>
								<div class="col-sm-2">
									<asp:DynamicControl runat="server" DataField="OrderDetailId" ID="OrderDetailId" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong><asp:DynamicControl runat="server" DataField="Quantity" Mode="ReadOnly" UIHint="FieldLabel" /></strong>
								</div>
								<div class="col-sm-2">
									<asp:DynamicControl runat="server" DataField="Quantity" ID="Quantity" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong><asp:DynamicControl runat="server" DataField="UnitPrice" Mode="ReadOnly" UIHint="FieldLabel" /></strong>
								</div>
								<div class="col-sm-2">
									<asp:DynamicControl runat="server" DataField="UnitPrice" ID="UnitPrice" Mode="ReadOnly" />
								</div>
							</div>
						
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong><asp:DynamicControl runat="server" DataField="TotalPrice" Mode="ReadOnly" UIHint="FieldLabel" /></strong>
								</div>
								<div class="col-sm-2">
									<asp:DynamicControl runat="server" DataField="TotalPrice" ID="TotalPrice" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong><asp:DynamicControl runat="server" DataField="OrderId" Mode="ReadOnly" UIHint="FieldLabel" /></strong>
								</div>
								<div class="col-sm-2">
									<%#: Item.Order.Status %>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong><asp:DynamicControl runat="server" DataField="ProductProductID" Mode="ReadOnly" UIHint="FieldLabel" /></strong>
								</div>
								<div class="col-sm-2">
									<%#: Item.Product.ProductName %>
								</div>
							</div>
                 	<div class="row">
					  &nbsp;
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" />
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

