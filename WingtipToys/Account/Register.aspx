<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WingtipToys.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Create a new account.</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
          <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="FirstName" CssClass="col-md-2 control-label">First Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="FirstName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="LastName"
                    CssClass="text-danger" ErrorMessage="The First name field is required." />
            </div>
        </div>
          <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="LastName" CssClass="col-md-2 control-label">Last Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="LastName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="LastName"
                    CssClass="text-danger" ErrorMessage="The Last Name field is required." />
            </div>
        </div>
         <div class="form-group">
                 <label for="inputEmail" class="col-lg-2 control-label">Email</label>
                    <div class="col-lg-10">
                    <asp:TextBox runat="server" ID="Email" CssClass="form-control" PlaceHolder ="Email" />
                    <asp:RegularExpressionValidator ControlToValidate="Email" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email is not in correct format" ValidationExpression="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}"></asp:RegularExpressionValidator>
             </div>
         </div>
          <div class="form-group">
                 <label for="inputEmail" class="col-lg-2 control-label">Cell Number</label>
                    <div class="col-lg-10">
                    <asp:TextBox runat="server" ID="CellNo" CssClass="form-control" PlaceHolder ="Cell Number" />
                    <asp:RequiredFieldValidator ControlToValidate="CellNo" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Your cell numner is required for notifying you of your transaction statuses"></asp:RequiredFieldValidator>
             </div>
         </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>
        <div class ="form-group">
<label class="col-lg-2 control-label">Gender</label>
            <div class="col-lg-2">
                <asp:DropDownList class="col-lg-2 form-control" Width="150px" ID="DropDownList1" runat="server" AppendDataBoundItems="True" BackColor="White" ForeColor="Black">
                    <asp:ListItem Selected="True" >Select Gender</asp:ListItem>
                    <asp:ListItem Value="Male">Male</asp:ListItem>
                    <asp:ListItem Value="Female">Female</asp:ListItem>
                </asp:DropDownList><asp:RequiredFieldValidator ControlToValidate="DropDownList1" ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field is aslo required"></asp:RequiredFieldValidator>
            </div>
            </div>
                <div class ="form-group">
<label class="col-lg-2 control-label">Birth Date</label>
                     <div class="col-lg-2">
      <asp:Calendar ID="DateOfBirth" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" >
          <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
          <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
          <OtherMonthDayStyle ForeColor="#999999" />
          <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
          <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
          <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
          <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
          <WeekendDayStyle BackColor="#CCCCFF" />
                         </asp:Calendar>
                         </div>
                    </div>

        <div class ="form-group">
      <label for="select" class="col-lg-2 control-label">How did you hear of DCR</label>
      <div class="col-lg-2">
        <asp:DropDownList class="col-lg-2 form-control" Width="200px" ID="DropDownList2" runat="server" AppendDataBoundItems="True" BackColor="White" ForeColor="Black">
                    <asp:ListItem Selected="True" >---Select---</asp:ListItem>
                    <asp:ListItem Value="Facebook">Facebook</asp:ListItem>
                    <asp:ListItem Value="Twitter">Twitter</asp:ListItem>
                     <asp:ListItem Value="Twitter">Friend Suggestion</asp:ListItem>
                </asp:DropDownList>
          <asp:RequiredFieldValidator ControlToValidate="DropDownList2" ID="RequiredFieldValidator3" runat="server" ErrorMessage="This field is also required"></asp:RequiredFieldValidator>

      </div>
            </div>
    </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
            </div>
        </div>

</asp:Content>
