<%@ Page Title="CategoryDelete" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Delete.aspx.cs" Inherits="WingtipToys.Admin.Category.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this Category?</h3>
        <asp:FormView runat="server"
            ItemType="WingtipToys.Models.Category" DataKeyNames="ID"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Category with ID <%: Request.QueryString["ID"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete Category</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong><asp:DynamicControl runat="server" DataField="CategoryName" Mode="ReadOnly" UIHint="FieldLabel" /></strong>
								</div>
								<div class="col-sm-2">
									<asp:DynamicControl runat="server" DataField="CategoryName" ID="CategoryName" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong><asp:DynamicControl runat="server" DataField="Description" Mode="ReadOnly" UIHint="FieldLabel" /></strong>
								</div>
								<div class="col-sm-2">
									<asp:DynamicControl runat="server" DataField="Description" ID="Description" Mode="ReadOnly" />
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

