<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="JobTrack.aspx.cs" Inherits="WingtipToys.JobTrack" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script src="../Scripts/jquery-2.1.1.js"></script>
    <link href="../Content/StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h2 style = "margin-left:100px;">My Account</h2>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:Button ID="Button1"  CssClass="btn btn-primary" runat="server" Text="Orders" OnClick="Button1_Click" />
     <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server" Text="Installations" OnClick="Button2_Click" />
     <asp:Button ID="Button3" CssClass="btn btn-primary" runat="server" Text="Repairs" OnClick="Button3_Click" /><br />

    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
    <asp:Repeater  runat="server" ID="CustomerOrders" SelectMethod="GetOrders" ItemType="WingtipToys.Models.Order">
        <ItemTemplate>
       <label runat="server" ID="lab1" style="font-size:20px" >Job for Order Number : <%# Item.OrderId %></label>  <br />  
       <label style="font-size:20px" id="lab2">Date of Order : <%# Item.OrderDate %></label>  
       <p id="p1"></p>   
            <div id="<%# Eval("OrderId") %>" class="progress" style = "height:100px;" >

<asp:Panel ID="Panel1" class="circle" runat="server">
      <span class="label">1</span>
    <span class="title">In_queue</span>
</asp:Panel>
        <span class="bar done"></span>
  <asp:Panel ID="Panel2" class="circle" runat="server">
      <span class="label">1</span>
    <span class="title">Work_In_Progress</span>
     
</asp:Panel>
  <span class="bar done"></span>
   <asp:Panel ID="Panel3" class="circle" runat="server">
      <span class="label">1</span>
    <span class="title">Complete</span>
</asp:Panel>
        <span class="bar done"></span>
 <asp:Panel ID="Panel4" class="circle" runat="server">
      <span class="label">1</span>
    <span class="title">Collected</span>
</asp:Panel>  
                <span class="bar done"></span>
   <asp:Panel ID="Panel5" class="circle" runat="server">
      <span class="label">1</span>
    <span class="title">Cancelled</span>
  
</asp:Panel> 
                                           
  </div>
                                                  <script type ="text/javascript">
                                                      var i = 0;
                                                      if (<%# Item.StatusId %> == 1) {
                                                          i = 1;
                                                          $('#' + "<%# Item.OrderId.ToString().Trim() %>" + ' .circle:nth-of-type(' + i + ')').addClass("done");

                                                          $('#' + "<%# Item.OrderId.ToString().Trim() %>" + ' .circle:nth-of-type(' + i + ') .label').html('&#10003;');

                                                  $('#' + "<%# Item.OrderId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ')').addClass('done');

                                                          $('#' + "<%# Item.OrderId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ') .label').html('&#10003;');

                                                          //     $('.progress .bar:nth-of-type(' + (i - 1) + ')').addClass('active');

                                                          //   $('.progress .bar:nth-of-type(' + (i - 2) + ')').removeClass('active').addClass('active');
                                                      }
                                                      else if (<%# Item.StatusId%> == 2) {
                                                          i = 2;
                                                          $('#' + "<%# Item.OrderId.ToString().Trim() %>" + ' .circle:nth-of-type(' + i + ')').addClass('done');

                                                          $('#' + "<%# Item.OrderId.ToString().Trim() %>" + ' .circle:nth-of-type(' + i+ ') .label').html('&#10003;');

                                                  $('#' + "<%# Item.OrderId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ')').addClass('done');

                                                  $('#' + "<%# Item.OrderId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ') .label').html('&#10003;');

                                                  //         $('.progress .bar:nth-of-type(' + (i - 1) + ')').addClass('active');

                                                  //        $('.progress .bar:nth-of-type(' + (i - 2) + ')').removeClass('active').addClass('active');

                                              } else if (<%# Item.StatusId %> == 3) {


                                                  i = 3;
                                                  $('#' + "<%# Item.OrderId.ToString().Trim() %>" + ' .circle:nth-of-type(' + i + ')').addClass('done');


                                                  $('#' + "<%# Item.OrderId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ')').removeClass('active').addClass('done');

                                                  $('#' + "<%# Item.OrderId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 2) + ')').removeClass('active').addClass('done');

                                                  $('#' + "<%# Item.OrderId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ') .label').html('&#10003;');

                                                  $('#' + "<%# Item.OrderId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 2) + ') .label').html('&#10003;');

                                                  //          $('.progress .bar:nth-of-type(' + (i - 1) + ')').addClass('active');

                                                  //          $('.progress  .bar:nth-of-type(' + (i - 2) + ')').removeClass('active').addClass('active');


                                              }
                                              else if (<%# Item.StatusId %> == 4) {


                                                  i = 4;
                                                  $('#' + "<%# Item.OrderId.ToString().Trim() %>" + ' .circle:nth-of-type(' + i + ')').addClass('done');

                                                  $('#' + "<%# Item.OrderId.ToString().Trim() %>" + ' .circle:nth-of-type(' + i + ') .label').html('&#10003;');

                                                  $('#' + "<%# Item.OrderId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ')').removeClass('active').addClass('done');

                                                  $('#' + "<%# Item.OrderId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 2) + ')').removeClass('active').addClass('done');

                                                  $('#' + "<%# Item.OrderId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ') .label').html('&#10003;');

                                                  $('#' + "<%# Item.OrderId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 2) + ') .label').html('&#10003;');

                                                  $('#' + "<%# Item.OrderId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 3) + ')').removeClass('active').addClass('done');

                                                  $('#' + "<%# Item.OrderId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 3) + ') .label').html('&#10003;');

                                                  //          $('.progress .bar:nth-of-type(' + (i - 1) + ')').addClass('active');

                                                  //          $('.progress  .bar:nth-of-type(' + (i - 2) + ')').removeClass('active').addClass('active');


                                              }else if (<%# Item.StatusId %> == 5) {


                                                  i = 5;
                                                  $('#' + "<%# Item.OrderId.ToString().Trim() %>" + ' .circle:nth-of-type(' + i + ')').addClass('red');


                                                  $('#' + "<%# Item.OrderId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ')').removeClass('active').addClass('red');

                                                  $('#' + "<%# Item.OrderId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 2) + ')').removeClass('active').addClass('red');


                                                  $('#' + "<%# Item.OrderId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 3) + ')').removeClass('active').addClass('red');



                                                  $('#' + "<%# Item.OrderId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 4) + ')').removeClass('active').addClass('red');

                                                  //          $('.progress .bar:nth-of-type(' + (i - 1) + ')').addClass('active');

                                                  //          $('.progress  .bar:nth-of-type(' + (i - 2) + ')').removeClass('active').addClass('active');

                                                  document.getElementById("p1").innerHTML = "Your Order Was Cancelled";


                                              }



    </script>
            </ItemTemplate>
    </asp:Repeater>
        </asp:View>
        <asp:View ID="View2" runat="server">

                <asp:Repeater  runat="server" ID="Repeater1" SelectMethod="GetInstallations" ItemType="WingtipToys.Models.Installation">
        <ItemTemplate>
       <label runat="server" ID="lab1" style="font-size:20px" >Status for Job Number : <%# Item.JobId %></label>  <br />  
       <label style="font-size:20px" id="lab2">Date of Order : <%# Item.DateOfBooking %></label>  
            <div id="<%# Eval("JobId") %>" class="progress" style = "height:100px;" >

<asp:Panel ID="Panel1" class="circle" runat="server">
      <span class="label">1</span>
    <span class="title">In_queue</span>
</asp:Panel>
        <span class="bar done"></span>
  <asp:Panel ID="Panel2" class="circle" runat="server">
      <span class="label">1</span>
    <span class="title">Inspection</span>
     
</asp:Panel>
  <span class="bar done"></span>
   <asp:Panel ID="Panel3" class="circle" runat="server">
      <span class="label">1</span>
    <span class="title">Work_In_Progress</span>
</asp:Panel>
        <span class="bar done"></span>
 <asp:Panel ID="Panel4" class="circle" runat="server">
      <span class="label">1</span>
    <span class="title">Testing</span>
</asp:Panel>   
  <span class="bar done"></span>
 <asp:Panel ID="Panel7" class="circle" runat="server">
      <span class="label">1</span>
    <span class="title">Complete</span>
</asp:Panel>                         
  </div>
                                                  <script type ="text/javascript">

                                                      var i = 0;
                                                      if (<%# Item.StatusId %> == 1) {
                                                          i = 1;
                                                          $('#' + "<%# Item.JobId.ToString().Trim() %>" + ' .circle:nth-of-type(' + i + ')').addClass("done");

                                                          $('#' + "<%# Item.JobId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ')').addClass('done');

                                                          $('#' + "<%# Item.OrderId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ') .label').html('&#10003;');

                                                          //     $('.progress .bar:nth-of-type(' + (i - 1) + ')').addClass('active');

                                                          //   $('.progress .bar:nth-of-type(' + (i - 2) + ')').removeClass('active').addClass('active');
                                                      }
                                                      else if (<%# Item.StatusId %> == 2) {
                                                          i = 2;
                                                          $('#' + "<%# Item.JobId.ToString().Trim() %>" + ' .circle:nth-of-type(' + i + ')').addClass('done');

                                                          $('#' + "<%# Item.JobId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ')').addClass('done');

                                                          $('#' + "<%# Item.JobId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ') .label').html('&#10003;');

                                                          //         $('.progress .bar:nth-of-type(' + (i - 1) + ')').addClass('active');

                                                          //        $('.progress .bar:nth-of-type(' + (i - 2) + ')').removeClass('active').addClass('active');

                                                      } else if (<%# Item.StatusId %> == 3) {


                                                          i = 3;
                                                          $('#' + "<%# Item.JobId.ToString().Trim() %>" + ' .circle:nth-of-type(' + i + ')').addClass('done');


                                                  $('#' + "<%# Item.JobId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ')').removeClass('active').addClass('done');

                                                  $('#' + "<%# Item.JobId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 2) + ')').removeClass('active').addClass('done');

                                                  $('#' + "<%# Item.JobId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ') .label').html('&#10003;');

                                                  $('#' + "<%# Item.JobId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 2) + ') .label').html('&#10003;');

                                                  //          $('.progress .bar:nth-of-type(' + (i - 1) + ')').addClass('active');

                                                  //          $('.progress  .bar:nth-of-type(' + (i - 2) + ')').removeClass('active').addClass('active');


                                                      }else if (<%# Item.StatusId %> == 4) {


                                                          i = 4;
                                                          $('#' + "<%# Item.JobId.ToString().Trim() %>" + ' .circle:nth-of-type(' + i + ')').addClass('done');


                                                          $('#' + "<%# Item.JobId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ')').removeClass('active').addClass('done');

                                                          $('#' + "<%# Item.JobId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 2) + ')').removeClass('active').addClass('done');

                                                          $('#' + "<%# Item.JobId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ') .label').html('&#10003;');

                                                          $('#' + "<%# Item.JobId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 2) + ') .label').html('&#10003;');

                                                          $('#' + "<%# Item.JobId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 3) + ') .label').html('&#10003;');
                                                          
                                                          $('#' + "<%# Item.JobId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 3) + ')').removeClass('active').addClass('done');

                                                          //          $('.progress .bar:nth-of-type(' + (i - 1) + ')').addClass('active');

                                                          //          $('.progress  .bar:nth-of-type(' + (i - 2) + ')').removeClass('active').addClass('active');


                                                      }else if (<%# Item.StatusId %> == 5) {


                                                          i = 5;
                                                          $('#' + "<%# Item.JobId.ToString().Trim() %>" + ' .circle:nth-of-type(' + i + ')').addClass('done');

                                                          $('#' + "<%# Item.JobId.ToString().Trim() %>" + ' .circle:nth-of-type(' + i+ ') .label').html('&#10003;');

                                                          $('#' + "<%# Item.JobId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ')').removeClass('active').addClass('done');

                                                          $('#' + "<%# Item.JobId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 2) + ')').removeClass('active').addClass('done');

                                                          $('#' + "<%# Item.JobId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ') .label').html('&#10003;');

                                                          $('#' + "<%# Item.JobId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 2) + ') .label').html('&#10003;');

                                                          $('#' + "<%# Item.JobId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 3) + ') .label').html('&#10003;');
                                                          
                                                          $('#' + "<%# Item.JobId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 3) + ')').removeClass('active').addClass('done');

                                                          $('#' + "<%# Item.JobId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 4) + ') .label').html('&#10003;');
                                                          
                                                          $('#' + "<%# Item.JobId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 4) + ')').removeClass('active').addClass('done');

                                                          //          $('.progress .bar:nth-of-type(' + (i - 1) + ')').addClass('active');

                                                          //          $('.progress  .bar:nth-of-type(' + (i - 2) + ')').removeClass('active').addClass('active');


                                                      }


    </script>
            </ItemTemplate>
    </asp:Repeater>

        </asp:View>
        <asp:View ID="View3" runat="server">

            
                <asp:Repeater  runat="server" ID="Repeater2" SelectMethod="GetRepairs" ItemType="WingtipToys.Models.Repairs">
        <ItemTemplate>
       <label runat="server" ID="lab1" style="font-size:20px" >Status for Job Number : <%# Item.RepairsId %></label>  <br />  
       <label style="font-size:20px" id="lab2">Date of Order : <%# Item.DateOfBooking %></label>  
            <div id="<%# Eval("RepairsId") %>" class="progress" style = "height:100px;" >

<asp:Panel ID="Panel1" class="circle" runat="server">
      <span class="label">1</span>
    <span class="title">In_queue</span>
</asp:Panel>
        <span class="bar done"></span>
  <asp:Panel ID="Panel2" class="circle" runat="server">
      <span class="label">1</span>
    <span class="title">Inspection</span>
     
</asp:Panel>
  <span class="bar done"></span>
   <asp:Panel ID="Panel3" class="circle" runat="server">
      <span class="label">1</span>
    <span class="title">Work_In_Progress</span>
</asp:Panel>
        <span class="bar done"></span>
 <asp:Panel ID="Panel4" class="circle" runat="server">
      <span class="label">1</span>
    <span class="title">Testing</span>
</asp:Panel> 
<span class="bar done"></span>
 <asp:Panel ID="Panel5" class="circle" runat="server">
      <span class="label">1</span>
    <span class="title">Complete</span>
</asp:Panel>                            
  </div>
                                                  <script type ="text/javascript">

                                                      var i = 0;
                                                      if (<%# Item.StatusId %> == 1) {
                                                          i = 1;
                                                          $('#' + "<%# Item.RepairsId.ToString().Trim() %>" + ' .circle:nth-of-type(' + i + ')').addClass("done");

                                                          $('#' + "<%# Item.RepairsId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ')').addClass('done');

                                                          $('#' + "<%# Item.RepairsId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ') .label').html('&#10003;');

                                                          //     $('.progress .bar:nth-of-type(' + (i - 1) + ')').addClass('active');

                                                          //   $('.progress .bar:nth-of-type(' + (i - 2) + ')').removeClass('active').addClass('active');
                                                      }
                                                      else if (<%# Item.StatusId %> == 2) {
                                                          i = 2;
                                                          $('#' + "<%# Item.RepairsId.ToString().Trim() %>" + ' .circle:nth-of-type(' + i + ')').addClass('done');

                                                          $('#' + "<%# Item.RepairsId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ')').addClass('done');

                                                          $('#' + "<%# Item.RepairsId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ') .label').html('&#10003;');

                                                          //         $('.progress .bar:nth-of-type(' + (i - 1) + ')').addClass('active');

                                                          //        $('.progress .bar:nth-of-type(' + (i - 2) + ')').removeClass('active').addClass('active');

                                                      } else if (<%# Item.StatusId%> == 3) {


                                                          i = 3;
                                                          $('#' + "<%# Item.RepairsId.ToString().Trim() %>" + ' .circle:nth-of-type(' + i + ')').addClass('done');

                                                          $('#' + "<%# Item.RepairsId.ToString().Trim() %>" + ' .circle:nth-of-type(' + i + ') .label').html('&#10003;');

                                                          $('#' + "<%# Item.RepairsId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ')').removeClass('active').addClass('done');

                                                          $('#' + "<%# Item.RepairsId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 2) + ')').removeClass('active').addClass('done');

                                                          $('#' + "<%# Item.RepairsId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ') .label').html('&#10003;');

                                                          $('#' + "<%# Item.RepairsId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 2) + ') .label').html('&#10003;');

                                                          //          $('.progress .bar:nth-of-type(' + (i - 1) + ')').addClass('active');

                                                     //          $('.progress  .bar:nth-of-type(' + (i - 2) + ')').removeClass('active').addClass('active');


                                                      } else if (<%# Item.StatusId%> == 4) {


                                                          i = 4;
                                                          $('#' + "<%# Item.RepairsId.ToString().Trim() %>" + ' .circle:nth-of-type(' + i + ')').addClass('done');


                                                          $('#' + "<%# Item.RepairsId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ')').removeClass('active').addClass('done');

                                                          $('#' + "<%# Item.RepairsId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 2) + ')').removeClass('active').addClass('done');

                                                          $('#' + "<%# Item.RepairsId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ') .label').html('&#10003;');

                                                          $('#' + "<%# Item.RepairsId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 3) + ') .label').html('&#10003;');

                                                          $('#' + "<%# Item.RepairsId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 2) + ') .label').html('&#10003;');

                                                          $('#' + "<%# Item.RepairsId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 3) + ')').removeClass('active').addClass('done');

                                                          //          $('.progress .bar:nth-of-type(' + (i - 1) + ')').addClass('active');

                                                          //          $('.progress  .bar:nth-of-type(' + (i - 2) + ')').removeClass('active').addClass('active');


                                                      }else if (<%# Item.StatusId%> == 5) {


                                                          i = 5;
                                                          $('#' + "<%# Item.RepairsId.ToString().Trim() %>" + ' .circle:nth-of-type(' + i + ')').addClass('done');


                                                          $('#' + "<%# Item.RepairsId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ')').removeClass('active').addClass('done');

                                                          $('#' + "<%# Item.RepairsId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 2) + ')').removeClass('active').addClass('done');

                                                          $('#' + "<%# Item.RepairsId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 1) + ') .label').html('&#10003;');

                                                          $('#' + "<%# Item.RepairsId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 3) + ') .label').html('&#10003;');

                                                          $('#' + "<%# Item.RepairsId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 2) + ') .label').html('&#10003;');

                                                          $('#' + "<%# Item.RepairsId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 3) + ')').removeClass('active').addClass('done');

                                                          $('#' + "<%# Item.RepairsId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 4) + ')').removeClass('active').addClass('done');

                                                          $('#' + "<%# Item.RepairsId.ToString().Trim() %>" + ' .circle:nth-of-type(' + (i - 4) + ') .label').html('&#10003;');

                                                          //          $('.progress .bar:nth-of-type(' + (i - 1) + ')').addClass('active');

                                                          //          $('.progress  .bar:nth-of-type(' + (i - 2) + ')').removeClass('active').addClass('active');


                                                      }



    </script>
            </ItemTemplate>
    </asp:Repeater>

        </asp:View>
    </asp:MultiView>
    

<!--<h3 style ="margin-left:50px;">Job id: 12F5</h3>
<div class="progress" style = "height:100px;">
  <div class="circle done">
    <span class="label">1</span>
    <span class="title">In queue</span>
  </div>
  <span class="bar done"></span>
  <div class="circle done">
    <span class="label">2</span>
    <span class="title">Inspection</span>
  </div>
  <span class="bar done"></span>
  <div class="circle done">
    <span class="label">3</span>
    <span class="title">Working</span>
  </div>
   <span class="bar done"></span>
  <div class="circle done">
    <span class="label">3</span>
    <span class="title">Testing</span>
  </div>
   <span class="bar done"></span>
  <div class="circle done">
    <span class="label">3</span>
    <span class="title">Complete</span>
  </div>
</div>-->


</asp:Content>
