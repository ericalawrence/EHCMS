<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageDoctor.master" AutoEventWireup="true" CodeFile="ProfileDoctor.aspx.cs" Inherits="ProfileDoctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CphBody" Runat="Server">
   

    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">   
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

      
 
  
  <style>
    body {
      font-family: Arial, sans-serif;
    }
    .profile-info {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-bottom: 10px;
    }
    .profile-info img {
      width: 100px;
      height: 100px;
      border-radius: 50%;
      object-fit: cover;
    }
    .profile-details {
      flex: 1;
      margin-left: 20px;
    }
    .edit-button {
      background-color: #4CAF50;
      color: white;
      padding: 5px 10px;
      border: none;
      cursor: pointer;
      font-size: 14px;
      border-radius: 5px;
    }
  </style>
</head>
<body>
    
  <div class="profile-info">
    <img src="johndoe.jpg" alt="Profile Icon">
    <div class="profile-details">
        <asp:Literal ID="lErr" runat="server" />
        <asp:Panel runat="server" ID="PnlNormalMode">
      <p><strong>Full Name:</strong> <asp:Label ID="lblFullName" runat="server" /></p>  
      <p><strong>Date of Birth:</strong> <asp:Label ID="lblDob" runat="server" /></p>  
      <p><strong>Gender:</strong> <asp:Label ID="lblSex" runat="server" /></p> 
      <p><strong>Address:</strong><asp:Label ID="lblAddress" runat="server" /></p>
      <p><strong>Current GP:</strong><asp:Label ID="lblCurrentGp" runat="server" /></p>
      <asp:Button ID="BtnLogout" Text ="Logout" runat="server" CssClass="logout-button" OnClick="BtnLogout_Click" />
        </asp:Panel>
        
    </div>
  </div>
    <div>  
               
        </div>  
</body>
</asp:Content>
