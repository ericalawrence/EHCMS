<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAfterLogin.master" AutoEventWireup="true" CodeFile="ViewAppointments.aspx.cs" Inherits="ViewAppointments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CphBody" Runat="Server">
    <head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>View Appointments</title>
  <style>
    body {
      font-family: Arial, sans-serif;
    }
    table {
      border-collapse: collapse;
      width: 100%;
    }
    th, td {
      border: 1px solid #ddd;
      padding: 8px;
      text-align: left;
    }
    th {
      background-color: #f2f2f2;
    }
  </style>
</head>
<%--<body>
  <table>
    <thead>
      <tr>
        <th>Date Requested</th>
        <th>Reason</th>
        <th>Doctor</th>
        <th>Status</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>2023-01-01</td>
        <td>Checkup</td>
        <td>Dr. Jones</td>
        <td>Upcoming</td>
      </tr>
      <tr>
        <td>2023-01-05</td>
        <td>Consultation</td>
        <td>Dr. Smith</td>
        <td>Attended</td>
      </tr>
      <!-- Add more appointments here -->
    </tbody>
  </table>
</body>--%>
    <asp:GridView runat="server" ID="grdAppointmnet" HeaderStyle-BackColor="Tomato"  AutoGenerateColumns="false"  >  
                <Columns>  
                   
                    <asp:BoundField DataField="AppointmentDateEdited" HeaderText="Date Requested" />  
                   <asp:BoundField DataField="Description" HeaderText="Reason" /> 
                     <asp:BoundField DataField="DoctorName" HeaderText="Doctor" /> 
                    <asp:BoundField DataField="StatusEdited" HeaderText="Status" /> 
                </Columns>  
            </asp:GridView>  

</asp:Content>

