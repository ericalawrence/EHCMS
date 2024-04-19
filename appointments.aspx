<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAfterLogin.master" AutoEventWireup="true" CodeFile="appointments.aspx.cs" Inherits="appointments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CphBody" Runat="Server">

<head>
    
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">   
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  <script>
          var dateToday = new Date();
          var yrRange = '2024' + ":" + (dateToday.getFullYear());

          $(function () {
              $("#txtAppointMentDate").datepicker({
                  changeMonth: true,
                  changeYear: true,
                  yearRange: yrRange,
                  // dateFormat: 'dd-mm-yy'
                  dateFormat: 'ddmmyy'
              });
          });
  </script>
  <title>Appointments Booking</title>
  <style>
    body {
      font-family: Arial, sans-serif;
    }
    .container {
      display: flex;
      flex-wrap: wrap;
      width: 100%;
    }
    .half-width {
      width: 50%;
    }
    .full-width {
      width: 100%;
    }
    select, input[type="date"], textarea {
      width: 100%;
      padding: 8px;
      margin-top: 5px;
      margin-bottom: 10px;
    }
    input[type="submit"] {
      background-color: #4CAF50;
      color: white;
      padding: 10px 20px;
      border: none;
      cursor: pointer;
      font-size: 14px;
      border-radius: 5px;
    }
    input[type="submit"]:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>

  <div class="container">
    <div class="full-width" >
        <asp:Literal ID="lErr" runat="server" />
      <label for="doctor">Choose a doctor:</label>
      <%--<select id="doctor" name="doctor">
        <option value="dr-jones">Dr. Jones</option>
        <option value="dr-smith">Dr. Smith</option>
        <!-- Add more doctors here -->
      </select>--%>
        <asp:DropDownList ID="ddlDoctors" runat="server" />
      <label for="date">Choose a date:</label><br />
     <asp:TextBox ID="txtAppointMentDate" runat="server" ClientIDMode="Static" autocomplete="off" /><br />
      <label for="reason">Reason for requesting an appointment:</label>
      <asp:TextBox ID ="txtAppointmentReason" TextMode="MultiLine" runat="server" /> <br />
      <asp:Button runat="server" ID="btnSubmit" Text="Submit" OnClick="btnSubmit_Click" />
    </div>
  </div>
  <div class="container">
    <a href="ViewAppointments.aspx" class="full-width"> View Appointments</a>
  </div>
</body>

</asp:Content>

