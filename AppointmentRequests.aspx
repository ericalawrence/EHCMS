<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageDoctor.master" AutoEventWireup="true" CodeFile="AppointmentRequests.aspx.cs" Inherits="AppointmentRequests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CphBody" Runat="Server">
   
  
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>View Appointments</title>
  <link rel="stylesheet" href="css/style.css?id=89">
  <%--<style>
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
  </style>--%>

    <body> 
        <%-- <Columns>
            <asp:BoundField DataField="PatientName" HeaderText="Name of Patient" />
            <asp:BoundField DataField="AppointmentDate" HeaderText="Date" />
            <asp:BoundField DataField="Reason" HeaderText="Reason" />
            <asp:TemplateField HeaderText="Status">--%>
                <%--<ItemTemplate>
                    <asp:Button ID="btnApprove" runat="server" Text="Approve" CommandName="Approve" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
                    <asp:Button ID="btnReject" runat="server" Text="Reject" CommandName="Reject" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>--%>
        <asp:Literal ID="lErr" runat="server" />
        <%--<table>
    <thead>
      <tr>
        <th>Name</th>
        <th>Date</th>
        <th>Reason</th>
        <th>Status</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John Smith</td>
        <td>2024-08-12</td>
        <td>Checkup</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Approve" CommandName="Approve" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
            <asp:Button ID="Button2" runat="server" Text="Reject" CommandName="Reject" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
        </td>
      </tr>
      <tr>
        <td>David Lloyd</td>
        <td>2024-09-11</td>
        <td>Consultation</td>
        <td>
            <asp:Button ID="Button3" runat="server" Text="Approve" CommandName="Approve" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
            <asp:Button ID="Button4" runat="server" Text="Reject" CommandName="Reject" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
        </td>
      </tr>
      <!-- Add more appointment requests here -->
    </tbody>
  </table>--%>

         <asp:GridView runat="server" ID="gdAppointment" HeaderStyle-BackColor="Tomato"  AutoGenerateColumns="false" DataKeyNames="AppointmentID" onrowdeleting="gdAppointment_RowDeleting" OnRowCommand="gdAppointment_RowCommand" >  
                <Columns>  
                   
                    <asp:BoundField DataField="PatientName" HeaderText="Patient Name" /> 
                    <asp:BoundField DataField="AppointmentDateEdited" HeaderText="Date" /> 
                    <asp:BoundField DataField="Description" HeaderText="Reason" /> 
                   <%-- <asp:ImageField DataImageUrlField="Docname" HeaderText="Image" ItemStyle-Width="50px" ControlStyle-Width="100" ControlStyle-Height = "100" ></asp:ImageField>                     --%>
                    <%--<asp:CommandField ShowDeleteButton="true" ButtonType="Image" DeleteImageUrl="Images/delete.jpeg" HeaderText="Delete"  />   --%>
                   <%-- <asp:ButtonField CommandName="Approve" Text="Approve" ButtonType="Button" />
                    <asp:ButtonField CommandName="Reject" Text="Approve" ButtonType="Button" />--%>
                    
                     <%--<asp:LinkButton ID="lnkproductname" runat ="server" CommandArgument='<%#Eval("Appointmentid")%>' CommandName ="selectproduct"   
    Text ='<%#Eval ("productname") %>'> DOnt Delete 
    </asp:LinkButton>--%>
                    <asp:TemplateField HeaderText ="Action">  
      <ItemTemplate >  
   
          <asp:LinkButton ID="lnkproductname" runat ="server" CommandArgument='<%#Eval("Appointmentid")%>' CommandName ="Approve" Text ="Approve" />  
  <asp:LinkButton ID="LinkButton1" runat ="server" CommandArgument='<%#Eval("Appointmentid")%>' CommandName ="Reject" Text ="Reject" />  
          </ItemTemplate>
          </asp:TemplateField>
                </Columns>  
            </asp:GridView> 
    </body>

</asp:Content>

