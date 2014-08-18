<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WingtipToys.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="OrderId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="OrderId" HeaderText="OrderId" InsertVisible="False" ReadOnly="True" SortExpression="OrderId" />
            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ProductContext %>" DeleteCommand="DELETE FROM [Orders] WHERE [OrderId] = @original_OrderId" InsertCommand="INSERT INTO [Orders] ([OrderDate], [Username], [Phone], [Email], [Total]) VALUES (@OrderDate, @Username, @Phone, @Email, @Total)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [OrderId], [OrderDate], [Username], [Phone], [Email], [Total] FROM [Orders]" UpdateCommand="UPDATE [Orders] SET [OrderDate] = @OrderDate, [Username] = @Username, [Phone] = @Phone, [Email] = @Email, [Total] = @Total WHERE [OrderId] = @original_OrderId">
        <DeleteParameters>
            <asp:Parameter Name="original_OrderId" Type="Int32" />
            <asp:Parameter Name="original_OrderDate" Type="DateTime" />
            <asp:Parameter Name="original_Username" Type="String" />
            <asp:Parameter Name="original_Phone" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_Total" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="OrderDate" Type="DateTime" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Total" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="OrderDate" Type="DateTime" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Total" Type="Decimal" />
            <asp:Parameter Name="original_OrderId" Type="Int32" />
            <asp:Parameter Name="original_OrderDate" Type="DateTime" />
            <asp:Parameter Name="original_Username" Type="String" />
            <asp:Parameter Name="original_Phone" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_Total" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
