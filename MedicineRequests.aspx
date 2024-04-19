<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageDoctor.master" AutoEventWireup="true" CodeFile="MedicineRequests.aspx.cs" Inherits="MedicineRequests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CphBody" Runat="Server">

     <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Prescription Requests</title>
  <link rel="stylesheet" href="css/style.css?id=89">

    <body> 
        <table>
    <thead>
      <tr>
        <th>Name</th>
        <th>Medicine</th>
        <th>Symptoms</th>
        <th>Repeat Prescription?</th>
        <th>status</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John Smith</td>
        <td>Nizoral</td>
        <td>Dry scalp</td>
        <td>Yes </td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Approve" CommandName="Approve" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
            <asp:Button ID="Button2" runat="server" Text="Reject" CommandName="Reject" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
        </td>
      </tr>
        <tr>
        <td>John Smith</td>
        <td>Atorvastatin</td>
        <td>Flu like Symptoms</td>
        <td>No </td>
        <td>
            <asp:Button ID="Button5" runat="server" Text="Approve" CommandName="Approve" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
            <asp:Button ID="Button6" runat="server" Text="Reject" CommandName="Reject" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
        </td>
      </tr>
      
      <!-- Add more prescription requests here -->
    </tbody>
  </table>

         <asp:GridView runat="server" ID="gdMedReq" HeaderStyle-BackColor="Tomato"  AutoGenerateColumns="false" DataKeyNames="ReqID" OnRowCommand="gdMedReq_RowCommand" >  
                <Columns>  
                   
                    <asp:BoundField DataField="PatientName" HeaderText="Patient Name" /> 
                    <asp:BoundField DataField="AppointmentDateEdited" HeaderText="Date" /> 
                    <asp:BoundField DataField="Description" HeaderText="Reason" /> 
                    <%--<asp:LinkButton ID="lnkproductname" runat ="server" CommandArgument='<%#Eval("Appointmentid")%>' CommandName ="selectproduct"   
    Text ='<%#Eval ("productname") %>'> DOnt Delete 
    </asp:LinkButton>--%>
                    <asp:TemplateField HeaderText ="Action">  
      <ItemTemplate >  
   
          <asp:LinkButton ID="lnkApprove" runat ="server" CommandArgument='<%#Eval("ReqID")%>' CommandName ="Approve" Text ="Approve" />  
  <asp:LinkButton ID="lnkReject" runat ="server" CommandArgument='<%#Eval("ReqID")%>' CommandName ="Reject" Text ="Reject" />  
          </ItemTemplate>
          </asp:TemplateField>
                </Columns>  
            </asp:GridView> 
    </body>

</asp:Content>

