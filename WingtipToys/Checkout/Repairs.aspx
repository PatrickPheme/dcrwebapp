<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Repairs.aspx.cs" Inherits="WingtipToys.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

      <h2>Book For Repairs</h2>

             <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="CarName" CssClass="col-md-2 control-label">Car Model</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="CarModel" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="CarModel"
                    CssClass="text-danger" ErrorMessage="The model of car field is required." />
            </div>
        </div>

              <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="CarName" CssClass="col-md-2 control-label">Car Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="CarName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="CarName"
                    CssClass="text-danger" ErrorMessage="The name of car field is required." />
            </div>
        </div>
    

     <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Calendar1" CssClass="col-md-2 control-label">Date of Repairs</asp:Label>
            <div class="col-md-10">
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                <DayStyle BackColor="#CCCCCC" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                <TodayDayStyle BackColor="#999999" ForeColor="White" />
                </asp:Calendar>
                <br />
                <br />
            </div>
        </div>

     <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TextBox2" CssClass="col-md-2 control-label">Give brief description of problem with your car</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" TextMode="MultiLine" Columns="5" Rows="5" ID="TextBox2" CssClass="form-control"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox2"
                    CssClass="text-danger" ErrorMessage="The name of car field is required." />
            </div>
        </div>

      <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button runat="server" ID="Button1" class="btn btn-success" Text="Submit" CssClass="btn btn-default" OnClick="Button1_Click1" />
            </div>
        </div>
 
     
</asp:Content>
