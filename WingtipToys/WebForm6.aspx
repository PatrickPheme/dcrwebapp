<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="WingtipToys.WebForm6" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Height="428px" style="margin-right: 0px" Width="1041px">
        <ServerReport ReportPath="report5" />
        <LocalReport ReportPath="Admin\Report6.rdlc">
            <DataSources>
                <rsweb:ReportDataSource Name="DataSet1" DataSourceId="ObjectDataSource1"></rsweb:ReportDataSource>
               
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
  
    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server"></asp:ObjectDataSource>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server">
    </asp:EntityDataSource>
  
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server"></asp:ObjectDataSource>
  
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WingtipToys.DCR_SammarsDataSeterTableAdapters.OrdersTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_OrderId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PaymentTransactionId" Type="Int32" />
            <asp:Parameter Name="OrderDate" Type="DateTime" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Total" Type="Decimal" />
            <asp:Parameter Name="CustomerCustomerId" Type="Int32" />
            <asp:Parameter Name="StatusId" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PaymentTransactionId" Type="Int32" />
            <asp:Parameter Name="OrderDate" Type="DateTime" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Total" Type="Decimal" />
            <asp:Parameter Name="CustomerCustomerId" Type="Int32" />
            <asp:Parameter Name="StatusId" Type="Int32" />
            <asp:Parameter Name="Original_OrderId" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <rsweb:ReportViewer ID="ReportViewer2" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Height="282px" Width="1023px">
        <LocalReport ReportPath="Admin\OrdersOfWeek.rdlc">
            <DataSources>
                <rsweb:ReportDataSource Name="DataSet3" DataSourceId="ObjectDataSource8"></rsweb:ReportDataSource>
                <rsweb:ReportDataSource Name="DataSet1" DataSourceId="ObjectDataSource7"></rsweb:ReportDataSource>
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource4"></asp:ObjectDataSource>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource7" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WingtipToys.DCR_SammarsMainDatasourceTableAdapters.Orders1TableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_OrderId" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="OrderDate" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="Original_OrderId" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource8" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WingtipToys.DCR_SammarsMainDatasourceTableAdapters.ListOrderDetailsNTableAdapter"></asp:ObjectDataSource>

</asp:Content>
