<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CphBody" Runat="Server">

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
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }
        input[type="submit"]:hover {
            opacity: 0.8;
        }
    </style>
    
    <formview action="/submit_registration" method="post">
        <label for="title">Title:</label>
        <select id="title" name="title">
            <option value="">Please select</option>
            <option value="mr">Mr</option>
            <option value="mrs">Mrs</option>
            <option value="miss">Miss</option>
            <option value="ms">Ms</option>
            <option value="dr">Dr</option>
        </select>

        <label for="firstname">First Name:</label>
        <%--<input type="text" id="firstname" name="firstname" required>--%>
        <asp:TextBox ID ="txtFirstName" runat="server" />

        <label for="last">Last Name:</label>
        <%--<input type="text" id="lastname" name="lastname" required>--%>
        <asp:TextBox ID="txtLastName" runat="server" />

        <label for="dob">Date of Birth:</label>
        <input type="date" id="dob" name="dob" required>
        <%--<asp:DateValue ID ="dtDOB" runat="server" />  how to change html date into asp format?--%>

        <label for="gender">Gender:</label>
        <select id="gender" name="gender">
            <option value="">Please select</option>
            <option value="male">Male</option>
            <option value="female">Female</option>
            <option value="other">Other</option>
        </select>

        <label for="address">Address:</label>
        <%--<input type="text" id="address1" name="address1" placeholder="Address Line 1" required>
        <input type="text" id="address2" name="address2" placeholder="Address Line 2">
        <input type="text" id="city" name="City" placeholder="City">
        <input type="text" id="postcode" name="postcode" placeholder="Postcode" required>--%>

        <asp:TextBox ID ="txtAddress1" runat="server" required =" "/> <%-- how to make field required --%>
        <asp:TextBox ID ="txtAddress2" runat="server" required ="" />
        <asp:TextBox ID ="txtCity" runat="server" required =" "/>
        <asp:TextBox ID ="txtPostCode" runat="server" required =" " />             <%-- how to put placeholder text ( like this : placeholder="Postcode" )- using asp format --%>

        <label for="england">Were you born in England?</label>
        <%--<input type="radio" id="yes" name="england" value="yes">--%>
         <asp:Radiobutton ID ="rdbEnglandYes" runat="server" required =" " />

        <label for="yes">Yes</label>
        <%--<input type="radio" id="no" name="england" value="no--%>
        <asp:Radiobutton ID ="rdbEnglandNo" runat="server" required=" " />
        <label for="no">No</label>

        <%--<label for="conditions">Previous conditions or concerns:</label>--%>
        <div class="checkbox-container">
          <div class="checkbox-row">
            <label><input type="checkbox" name="conditions[]" value="Asthma"> Asthma</label><br>
            <label><input type="checkbox" name="conditions[]" value="Diabetes"> Diabetes</label><br>
            <label><input type="checkbox" name="conditions[]" value="Heart Disease"> Heart Disease</label><br> <%-- how to change checkboxes into asp format, with labels? --%>
          </div>
          <div class="checkbox-row">
            <label><input type="checkbox" name="conditions[]" value="Cancer"> Cancer</label><br>
            <label><input type="checkbox" name="conditions[]" value="Stroke"> Stroke</label><br>
            <label><input type="checkbox" name="conditions[]" value="Arthritis"> Arthritis</label><br>
          </div>
        </div>
        <textarea id="conditions" name="conditions" rows="4" cols="50"></textarea>

        <label for="drinking">Current drinking status:</label>
        <select id="drinking" name="drinking">
            <option value="">Please select</option>
            <option value="non-drinker">Non-drinker</option>
            <option value="social-drinker">Social drinker</option>
            <option value="heavy-drinker">Heavy drinker</option>
        </select>

        <label for="smoking">Current smoking status:</label>
        <select id="smoking" name="smoking">
            <option value="">Please select</option>
            <option value="non-smoker">Non-smoker</option>
            <option value="social-smoker">Social smoker</option>
            <option value="heavy-smoker">Heavy smoker</option>
        </select>

        <%--<input type="button" onclick="alert(Registered!)" value="Submit">--%>
        <asp:Button ID ="btnSubmit" runat="server"/> <%-- how to label button using asp format --%>

</asp:Content>

