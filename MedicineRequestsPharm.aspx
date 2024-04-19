<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePharm.master" AutoEventWireup="true" CodeFile="MedicineRequestsPharm.aspx.cs" Inherits="MedicineRequestsPharm" %>

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
        <th>Approved By</th>
        <th>Patient Records</th>
        <th>status</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John Smith</td>
        <td>Nizoral</td>
        <td>Dry scalp</td>
        <td>Dr Jason Borne</td>
          <td>
            <asp:Button ID="Button5" runat="server" Text="View" CommandName="View"  />
        </td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Approve" CommandName="Approve"  />
            <asp:Button ID="Button2" runat="server" Text="Reject" CommandName="Reject"  />
        </td>
      </tr>
        <tr>
        <td>Amy Winehouse</td>
        <td>Atorvastatin</td>
        <td>Chest pain and dizziness</td>
        <td>Dr Jason Borne</td>
        <td>
            <asp:Button ID="Button6" runat="server" Text="View" CommandName="View"/>
        </td>
        <td>
            <asp:Button ID="Button3" runat="server" Text="Approve" CommandName="Approve" />
            <asp:Button ID="Button4" runat="server" Text="Reject" CommandName="Reject"/>
        </td>
      </tr>

      
      <!-- Add more prescription requests here -->
    </tbody>
  </table>
        <asp:GridView runat="server" ID="gdMedReq" HeaderStyle-BackColor="Tomato"  AutoGenerateColumns="false" DataKeyNames="ReqID" OnRowCommand="gdMedReq_RowCommand" >  
                <Columns>  
                   <asp:BoundField DataField="PatientName" HeaderText="Patient Name" /> 
                    <asp:BoundField DataField="ApprovedBy" HeaderText="Approved By" /> 
                    <asp:BoundField DataField="DrugName" HeaderText="Medicine" /> 
                    <asp:BoundField DataField="Description" HeaderText="Symptoms" /> 
                    <asp:BoundField DataField="AppointmentDateEdited" HeaderText="Date" /> 

                    <%--<asp:LinkButton ID="lnkproductname" runat ="server" CommandArgument='<%#Eval("Appointmentid")%>' CommandName ="selectproduct"   
    Text ='<%#Eval ("productname") %>'> DOnt Delete 
    </asp:LinkButton>--%>
                    <asp:TemplateField HeaderText ="Action">  
      <ItemTemplate >  
   <b>
          <asp:Button ID="lnkApprove" runat ="server" CommandArgument='<%#Eval("ReqID")%>' CommandName ="ChkStock" Text ="Checking For Stock" Visible='<%# Eval("status").ToString() != "3" ? true : false%>'/>  
  <asp:Button ID="lnkReject" runat ="server" CommandArgument='<%#Eval("ReqID")%>' CommandName ="Ready" Text ="Ready For Collection" />  
      </b>
       </ItemTemplate>
          </asp:TemplateField>
                </Columns>  
            </asp:GridView>

    </body>

</asp:Content>

