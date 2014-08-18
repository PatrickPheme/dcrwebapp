<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckReview.aspx.cs" Inherits="WingtipToys.Checkout.CheckReview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <h1>Order Review</h1>
    <p></p>
    <h3 style="padding-left: 33px">Products:</h3>

    <asp:GridView ID="OrderItemList" runat="server" AutoGenerateColumns="False" GridLines="Both" CellPadding="10" Width="500" BorderColor="#efeeef" BorderWidth="33" ItemType="WingtipToys.Models.CartItem" SelectMethod = "GetCartItem" >              
        <Columns>
            <asp:BoundField DataField="ProductId" HeaderText=" Product ID" />        
            <asp:BoundField DataField="Product.ProductName" HeaderText=" Product Name" />        
            <asp:BoundField DataField="Product.UnitPrice" HeaderText="Price (each)" DataFormatString="{0:c}"/>     
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" />        
        </Columns>    
    </asp:GridView>
    <asp:DetailsView ID="ShipInfo" runat="server" AutoGenerateRows="false" GridLines="None" CellPadding="10" BorderStyle="None" CommandRowStyle-BorderStyle="None" ItemType="WingtipToys.Models.Order">
        <Fields> 
        <asp:TemplateField>
            <ItemTemplate>
                <h3>Order Details by:</h3>
                <br />
                <asp:Label ID="FirstName" runat="server" Text=''><%: Context.User.Identity.GetUserName()  %></asp:Label>  
                <asp:Label ID="Date" runat="server" Text=''>DateTime.Now()</asp:Label>
                <p></p>
                <h3>Order Total:</h3>
                <br />
                <asp:Label runat="server" ID="Total"> Text='<%#: Item.Total %>'</asp:Label>
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Left" />
        </asp:TemplateField>
          </Fields>
    </asp:DetailsView>
    <h4>Order Total</h4>
    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
    <h3>Your Details</h3>
    <asp:Label ID="Label4" runat="server" Text=""></asp:Label><br />
    <asp:Label ID="Label5" runat="server" Text=""></asp:Label><br />
    <asp:Label ID="Label6" runat="server" Text=""></asp:Label><br />
    <asp:Label ID="Label7" runat="server" Text=""></asp:Label><br />

    <h3>Date</h3>
    <asp:Label ID="Label1" runat="server" Text="Label"><%: DateTime.Now.ToString("MMMM dd,yyyy") %></asp:Label>
    <p></p>
    <hr />
                              <a  href="/ShoppingCart.aspx">               
                                        <span class="btn btn-primary ProductListItem">
                                            <b>Back to Cart</b>
                                        </span>
                          </a>
    <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="Complete Order" OnClick="Button1_Click" />
<b></b><b></b>
</asp:Content>
