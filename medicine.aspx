<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAfterLogin.master" AutoEventWireup="true" CodeFile="medicine.aspx.cs" Inherits="medicine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CphBody" Runat="Server">
    
<head>
  <style>
    body {
      font-family: Arial, sans-serif;
      max-width: 960px;
      margin: 0 auto;
      padding: 20px;
    }

    button {
      background-color: #4CAF50;
      color: white;
      padding: 10px 20px;
      border: none;
      cursor: pointer;
      font-size: 14px;
      margin-right: 10px;
    }

    button:hover {
      background-color: #45a049;
    }

    table {
      border-collapse: collapse;
      width: 50%;
      margin-top: 20px;
    }

    th, td {
      border: 1px solid #ddd;
      padding: 8px;
      text-align: left;
    }

    th {
      background-color: #f2f2f2;
    }

    form {
      margin-top: 30px;
    }

    fieldset {
      border: 1px solid #ddd;
      padding: 10px;
      margin-top: 10px;
    }

    legend {
      font-size: 16px;
      font-weight: bold;
      margin-bottom: 10px;
    }

    select, textarea {
      width: 100%;
      padding: 8px;
      margin-top: 5px;
      margin-bottom: 10px;
    }

    textarea {
      resize: vertical;
    }

    input[type="submit"] {
      background-color: #4CAF50;
      color: white;
      padding: 10px 20px;
      border: none;
      cursor: pointer;
      font-size: 14px;
    }

    input[type="submit"]:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>

<!-- View medication requests and track prescription status buttons -->
<button><a href="ViewRequestsAndTrack.aspx"> View and Track Medication Requests </a></button>
<asp:Literal ID="lErr" runat="server" />
<!-- Table for past medications -->
<table border="1" width="50%">
  <tr>
    <th>Medication</th>
    <th>Prescribed By</th>
    <th>Date Prescribed</th>
  </tr>
  <tr>
    <td>Dummy Medication 1</td>
    <td>Dr. John Doe</td>
    <td>2022-01-01</td>
  </tr>
  <tr>
    <td>Dummy Medication 2</td>
    <td>Dr. Jane Smith</td>
    <td>2021-12-15</td>
  </tr>
</table>

<!-- New prescription request form -->

    <legend>New Prescription Request</legend>
    
      <!-- Select Doctor -->
      <label for="prescribed-recently">Select Doctor</label><br>
      <asp:DropDownList ID="ddlDoctors" runat="server" />
    <!-- Have you been prescribed this in the last 6 months? -->
    <label for="prescribed-recently">Have you been prescribed this in the last 6 months?</label><br>
    <%--<select id="prescribed-recently" name="prescribed-recently">
      <option value="yes">Yes</option>
      <option value="no">No</option>
    </select>--%>
      <asp:DropDownList ID="ddlLast6month" runat="server" >
      <asp:ListItem Value="1" Text="Yes" />
          <asp:ListItem Value="0" Text="No" />
          </asp:DropDownList>
      <br><br>

   <!-- Please choose an option from the following -->
    <label for="prescription-options">Please choose an option from the following:</label><br>
    <%--<select id="prescription-options" name="prescription-options">
      <option value="option1">Nizoral</option>
      <option value="option2">Atorvastatin</option>
      <option value="option3">Metformin</option>
    </select>--%>
      <asp:DropDownList ID="ddlMedicine" runat="server" >
      <asp:ListItem Value="0" Text="Nizoral" />
          <asp:ListItem Value="1" Text="Atorvastatin" />
           <asp:ListItem Value="2" Text="Metformin" />

          </asp:DropDownList>
      <br><br>

    <!-- Please describe what symptoms you are experiencing -->
    <label for="symptoms">Please describe what symptoms you are experiencing:</label><br>option
    <%--<textarea id="symptoms" name="symptoms" rows="4" cols="50"></textarea>--%>
      <asp:TextBox ID="txtSymtom" runat="server" TextMode="MultiLine" />
   <br><br>


    <!--br>
    <textarea id="symptoms" name="symptoms" rows="4" cols="50"></textarea Submit button -->
    <%--<input type="submit" value="Submit">--%>
      <asp:Button runat="server" ID="btnSave" Text="Submit" OnClick="btnSave_Click" />
 
</body> 


</asp:Content>

