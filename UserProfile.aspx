<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAfterLogin.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CphBody" Runat="Server">
   

    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">   
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

      <script>
          var dateToday = new Date();
          var yrRange = '1950' + ":" + (dateToday.getFullYear());

          $(function () {
              $("#txtdob").datepicker({
                  changeMonth: true,
                  changeYear: true,
                  yearRange: yrRange,
                  // dateFormat: 'dd-mm-yy'
                  dateFormat: 'ddmmyy'
              });
          });
</script>
 
  <title>Personal Profile</title>
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
        <div>Select Docs <asp:FileUpload ID="fup" runat="server"  /> <asp:Button id="UploadBtn" Text="Upload File"  runat="server" Width="153px" OnClick="UploadBtn_Click" /></div>
        
        <asp:Button ID="BtnEdit" runat="server" Text="Edit" CssClass="edit-button" OnClick="BtnEdit_Click" />
        <asp:Literal ID="lErr" runat="server" />
        <asp:Panel runat="server" ID="PnlNormalMode">
      <p><strong>Full Name:</strong> <asp:Label ID="lblFullName" runat="server" /></p>  
      <p><strong>Date of Birth:</strong> <asp:Label ID="lblDob" runat="server" /></p>  
      <p><strong>Gender:</strong> <asp:Label ID="lblSex" runat="server" /></p> 
      <p><strong>Address:</strong><asp:Label ID="lblAddress" runat="server" /></p>
      <p><strong>Current GP:</strong><asp:Label ID="lblCurrentGp" runat="server" /></p> 
        </asp:Panel>
        <asp:Panel runat="server" ID="pnlEdit">
            <div class="profile-info">
            <div class="profile-details">
            
            <label for="title">Title:</label>
      <asp:DropDownList ID="ddlTitle" runat="server">
          <asp:ListItem Text="Please Select" Value="0" />
           
            <asp:ListItem Text="Mr" Value="1" />
            <asp:ListItem Text="Mrs" Value="2" />
            <asp:ListItem Text="Miss" Value="3" />
            <asp:ListItem Text="Ms" Value="4" />
            <asp:ListItem Text="Dr" Value="5" />
        </asp:DropDownList><br />
        
        <label for="firstname">First Name:</label>
        <asp:TextBox ID ="txtFirstName" runat="server" /><br />

         

        <label for="last">Last Name:</label>
        <asp:TextBox ID="txtLastName" runat="server" /><br />

        <label for="dob">Date of Birth:</label>
        <asp:TextBox ID="txtdob" runat="server" ClientIDMode="Static" autocomplete="off" /><br />

        <label for="gender">Gender:</label>
        
        <asp:DropDownList ID="ddlGender" runat="server">
            <asp:ListItem Text="Please select" Value="0" />
            <asp:ListItem Text="Male" Value="1" />
            <asp:ListItem Text="Female" Value="2" />
            <asp:ListItem Text="Other" Value="3" />
        </asp:DropDownList>
                <br />
        <label for="address">Address:</label>
       
        <asp:TextBox ID ="txtAddress1" TextMode="MultiLine" runat="server" /> <br /><%-- how to make field required --%>
        <asp:TextBox ID ="txtAddress2" TextMode="MultiLine" runat="server"  />
        </div>
                </div>
            </asp:Panel>
    </div>
  </div>
    <div>  
            <asp:GridView runat="server" ID="gdImage" HeaderStyle-BackColor="Tomato"  AutoGenerateColumns="false" DataKeyNames="docID" onrowdeleting="gdImage_RowDeleting" >  
                <Columns>  
                   
                    <asp:BoundField DataField="DocID" HeaderText="DocID" />  
                    <asp:ImageField DataImageUrlField="Docname" HeaderText="Image" ItemStyle-Width="50px" ControlStyle-Width="100" ControlStyle-Height = "100" ></asp:ImageField>                     
                    <asp:CommandField ShowDeleteButton="true" ButtonType="Image" DeleteImageUrl="Images/delete.jpeg" HeaderText="Delete" />   
                </Columns>  
            </asp:GridView>  
        </div>  
</body>
</asp:Content>

