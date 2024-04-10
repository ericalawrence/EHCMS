<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAfterLogin.master" AutoEventWireup="true" CodeFile="ViewRequestsAndTrack.aspx.cs" Inherits="ViewRequestsAndTrack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CphBody" Runat="Server">


<head>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Medication Requests</title>
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
    .track-button {
      background-color: #4CAF50;
      color: white;
      padding: 5px 10px;
      border: none;
      cursor: pointer;
      font-size: 14px;
      border-radius: 5px;
    }
    .roadmap {
      display: none;
      margin-top: 10px;
    }
    .roadmap-step {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-bottom: 5px;
    }
    .roadmap-step p {
      flex: 1;
    }
  </style>
  <script>
    function toggleRoadmap(row) {
      const roadmap = row.querySelector('.roadmap');
      roadmap.style.display = roadmap.style.display === 'none' ? 'block' : 'none'; //javascript for animation of roadmap/buttons 
    }
  </script>
</head>
<body>

  <table>
    <thead>
      <tr>
        <th>Name</th>
        <th>Date Requested</th>
        <th>Status</th>
        <th>Track</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Medication 1</td>
        <td>2023-01-01</td>
        <td>Ready for Collection</td>
        <td><button class="track-button" onclick="toggleRoadmap(this.parentElement.parentElement);">Track</button></td>
        <td class="roadmap">
          <div class="roadmap-step">
            <p>Approved:</p>
            <p>2023-01-02</p>
          </div>
          <div class="roadmap-step">
            <p>Checking Stock:</p>
            <p>2023-01-03</p>
          </div>
          <div class="roadmap-step">
            <p>Packing:</p>
            <p>2023-01-04</p>
          </div>
          <div class="roadmap-step">
            <p>Ready to Collect:</p>
            <p>2023-01-05</p>
          </div>
        </td>
      </tr>
      <!-- Add more rows here -->
    </tbody>
  </table>
</body>
</asp:Content>

