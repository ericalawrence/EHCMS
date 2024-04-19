<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CphBody" Runat="Server">

    <%--Link And Style For Calendar Start--%>
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



          $(document).ready(function () {
              $('form1').validate({
                  rules: {
                <%= txtFirstName.ClientID %>: {
            required: true,
            minlength: 2,
            maxlength: 25
        }   },
            messages:{
                <%= txtFirstName.ClientID %>: {
                    required: "Please enter your first name.",
                    minlength: $.validator.format("Your first name must be at least {0} characters.")
                }
            },
              errorClass: "error-label",
              wrapper: "li",
              errorLabelContainer: "#ErrorSection"
        });
    });
      </script>

     <%--Link And Style For Calendar End--%>
    
    <h1>Registration Form</h1>

     <style>  <%-- i will add this into the style.css folder this is temporary --%>
        label {
            display: block;
            margin-top: 10px;
        }
        input[type="text"], input[type="password"], select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;
        }
        input[type="submit"] {
            border-style: none;
             border-color: inherit;
             border-width: medium;
             background-color: #4CAF50;
             color: white;
             padding: 14px 20px;
             margin: 8px 0;
             cursor: pointer;
            }
        input[type="submit"]:hover {
            opacity: 0.8;
        }
        
    </style>
 <br /><br />
    <div>

          <asp:Literal ID="lErr" runat="server" />
        
        <label for="title">Title:</label>
      <asp:DropDownList ID="ddlTitle" runat="server" required ="">
          <asp:ListItem Text="Please Select" Value="0" />
           
            <asp:ListItem Text="Mr" Value="1" />
            <asp:ListItem Text="Mrs" Value="2" />
            <asp:ListItem Text="Miss" Value="3" />
            <asp:ListItem Text="Ms" Value="4" />
            <asp:ListItem Text="Dr" Value="5" />
          <asp:ListItem Text="Pharmacist" Value="6" />
        </asp:DropDownList>
        
        <label for="firstname">First Name:</label>
        <%--<input type="text" id="firstname" name="firstname" required>--%>
        <asp:TextBox ID ="txtFirstName" runat="server" required =""   />

         

        <label for="last">Last Name:</label>
        <%--<input type="text" id="lastname" name="lastname" required>--%>
        <asp:TextBox ID="txtLastName" runat="server" />

        <label for="dob">Date of Birth:</label>
        <%--<input type="date" id="dob" name="dob" required>--%>
        <asp:TextBox ID="txtdob" runat="server" ClientIDMode="Static" autocomplete="off" />
        <%--<asp:DateValue ID ="dtDOB" runat="server" />  how to change html date into asp format?--%>

        <label for="gender">Gender:</label>
        <%--<select id="gender" name="gender">
            <option value="">Please select</option>
            <option value="male">Male</option>
            <option value="female">Female</option>
            <option value="other">Other</option>
        </select>--%>
        <asp:DropDownList ID="ddlGender" runat="server">
            <asp:ListItem Text="Please select" Value="0" />
            <asp:ListItem Text="Male" Value="1" />
            <asp:ListItem Text="Female" Value="2" />
            <asp:ListItem Text="Other" Value="3" />
        </asp:DropDownList>

        <label for="address">Address:</label>
        <%--<input type="text" id="address1" name="address1" placeholder="Address Line 1" required>
        <input type="text" id="address2" name="address2" placeholder="Address Line 2">
        <input type="text" id="city" name="City" placeholder="City">
        <input type="text" id="postcode" name="postcode" placeholder="Postcode" required>--%>

        <asp:TextBox ID ="txtAddress1" TextMode="MultiLine" runat="server" required =" "/> <%-- how to make field required --%>
        <asp:TextBox ID ="txtAddress2" TextMode="MultiLine" runat="server" required =" " />
        <label for="City">City:</label>
        <asp:TextBox ID ="txtCity" runat="server" required =" "/>
        <label for="City">PostCode:</label>
        <asp:TextBox ID ="txtPostCode" runat="server" required =" " />             <%-- how to put placeholder text ( like this : placeholder="Postcode" )- using asp format --%>

        <label for="england">Were you born in England?</label>
        <%--<input type="radio" id="yes" name="england" value="yes">--%>
         <asp:RadioButtonList ID ="rdbBornCity" runat="server" RepeatDirection="Horizontal" TextAlign="Left" style="min-width:150px" >
            
             <asp:ListItem Text="Yes" Value="1" />
              <asp:ListItem Text="No" Value="0" />
        </asp:RadioButtonList>
        <%--<label for="yes">Yes</label>
        <%--<input type="radio" id="no" name="england" value="no--%>
        <%--<asp:Radiobutton ID ="rdbEnglandNo" runat="server" required=" " />
        <label for="no">No</label>--%>

        <%--<label for="conditions">Previous conditions or concerns:</label>--%>
       <%-- <div class="checkbox-container">
          <div class="checkbox-row">--%>
              <Div>
                  Select Disease
              </Div>
            <%--<label><input type="checkbox" name="conditions[]" value="Asthma"> Asthma</label><br>
            <label><input type="checkbox" name="conditions[]" value="Diabetes"> Diabetes</label><br>
            <label><input type="checkbox" name="conditions[]" value="Heart Disease"> Heart Disease</label><br>--%> <%-- how to change checkboxes into asp format, with labels? --%>
              <asp:CheckBoxList ID="chkDisease" runat="server" RepeatDirection="Horizontal" TextAlign="Left" style="min-width:550px">
                  <asp:ListItem Text="Asthma" Value="0" />
                  <asp:ListItem Text="Diabetes" Value="1" />
                  <asp:ListItem Text="Heart Disease" Value="2" />
                  <asp:ListItem Text="Cancer" Value="3" />
                  <asp:ListItem Text="Stroke" Value="4" />
                  <asp:ListItem Text="Arthritis" Value="5" />

              </asp:CheckBoxList>
          <%--</div>--%>
         <%-- <div class="checkbox-row">
            <label><input type="checkbox" name="conditions[]" value="Cancer"> Cancer</label><br>
            <label><input type="checkbox" name="conditions[]" value="Stroke"> Stroke</label><br>
            <label><input type="checkbox" name="conditions[]" value="Arthritis"> Arthritis</label><br>
          </div>--%>
       <%-- </div>--%>
        <textarea id="conditions" name="conditions" rows="4" cols="50"></textarea>

        <label for="drinking">Current drinking status:</label>
        <%--<select id="drinking" name="drinking">
            <option value="">Please select</option>
            <option value="non-drinker">Non-drinker</option>
            <option value="social-drinker">Social drinker</option>
            <option value="heavy-drinker">Heavy drinker</option>
        </select>--%>
        <asp:DropDownList ID="ddlDrinkStatus" runat="server">
            <asp:ListItem Text="Please select" Value="0" />
            <asp:ListItem Text="Non-drinker" Value="1" />
            <asp:ListItem Text="Social-drinker" Value="2" />
            <asp:ListItem Text="Heavy-drinker" Value="3" />

        </asp:DropDownList>
        <label for="smoking">Current smoking status:</label>
        <%--<select id="smoking" name="smoking">
            <option value="">Please select</option>
            <option value="non-smoker">Non-smoker</option>
            <option value="social-smoker">Social smoker</option>
            <option value="heavy-smoker">Heavy smoker</option>
        </select>--%>
        <asp:DropDownList ID="ddlSmokingStatus" runat="server">
            <asp:ListItem Text="Please select" Value="0" />
            <asp:ListItem Text="Non-smoker" Value="1" />
            <asp:ListItem Text="Social-smoker" Value="2" />
            <asp:ListItem Text="Heavy-smoker" Value="3" />

        </asp:DropDownList>
        <label for="Email">Email:</label>
        <asp:TextBox ID ="txtEmail" runat="server" />
        <label for="Password">Password:</label>
        <asp:TextBox ID ="txtPassword" runat="server" />
        <label for="Confirm Password">Confirm Password:</label>
        <asp:TextBox ID ="txtConfirmPassword" runat="server" />

        <asp:Button ID ="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /> <%-- how to label button using asp format --%>
       
</div>

</asp:Content>

