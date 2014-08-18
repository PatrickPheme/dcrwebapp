<%@ Page Title="ProductInsert" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Insert.aspx.cs" Inherits="WingtipToys.Admin.Product.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server" ID="Formgh"
            ItemType="WingtipToys.Models.Product" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false" OnPageIndexChanging="Formgh_PageIndexChanging">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert Product</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
						    <asp:DynamicControl Mode="Insert" DataField="ProductName" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Description" runat="server" />
						    <asp:DynamicControl ID="ImagePat" Mode="Insert" DataField="ImagePath" runat="server" /> 
                    
                            <asp:FileUpload ID="ProductImage" runat="server" CssClass="Form-group" Style ="margin-left:200px;" />
                    <br />
						    <asp:DynamicControl Mode="Insert" DataField="UnitPrice" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="CategoryID" 
								DataTypeName="WingtipToys.Models.Category" 
								DataTextField="CategoryName" 
								DataValueField="ID" 
								UIHint="ForeignKey" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button runat="server" ID="InsertButton" CommandName="Insert" Text="Insert" CssClass="btn btn-primary" />
                            <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                        </div>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
					</div>
                </fieldset>
            </InsertItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>
