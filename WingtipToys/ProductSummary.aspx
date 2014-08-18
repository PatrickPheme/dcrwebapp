<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductSummary.aspx.cs" Inherits="WingtipToys.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <asp:FormView ID="productDetail" runat="server" ItemType="WingtipToys.Models.Product" SelectMethod ="GetProductSummary" RenderOuterTable="false">
        <ItemTemplate>
            <div>
                <h1><%#:Item.ProductName %></h1>
            </div>
            <br />
            <table>
                <tr>
                    <td>
                        <img src="/Catalog/Images/<%#:Item.ImagePath %>" style="border:solid; height:300px" alt="<%#:Item.ProductName %>"/>
                    </td>
                    <td>&nbsp;</td>  
                    <td style="vertical-align: top; text-align:left;">
                        <h4><b>Description:</b><br /><%#:Item.Description %></h4>
                        <br />
                        <h4><span><b>Price:</b>&nbsp;<%#: String.Format("{0:c}", Item.UnitPrice) %></span></h4>
                        <br />
                        <h4><span><b>Product Number:</b>&nbsp;<%#:Item.ProductID %></span></h4>
                        <br />
                          <a href="/AddToCart.aspx?productID=<%#:Item.ProductID %>">               
                                        <span class="btn btn-success ProductListItem">
                                            <b>Add To Cart<b>
                                        </span>
                          </a>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
