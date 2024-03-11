<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CphBody" Runat="Server">
    <script type="text/javascript">
        function ShowRegister() {
            $('#dvReg').show();
            $('#dvLogin').hide();
        }
    </script>
    <div class="wrapper"  >
    <div class="form-box login" id="dvLogin">
        <h2 class="login">Login</h2>
        
            <div class="input-box">
                <span class="icon"><ion-icon name="mail"></ion-icon></span>
                <%--<input type = "email" required>--%>
                <asp:TextBox ID="txtEmailLogin" runat="server" />
                <label>Email</label>
            </div>
            <div class="input-box">
                <span class="icon"><ion-icon name="lock-closed"></ion-icon></span>
                <%--<input type = "password" required>--%>
                <asp:TextBox ID="txtPwdLogin" runat="server" />
                <label>Password</label>
            </div>
            <div class = "register">
            <div class="remember-forgot">
                <label><%--<input type = "checkbox">--%>
                    <asp:CheckBox ID="ChkRem" runat="server" />
                    Remember me </label>
                    <a href="#" class="register-link">Forgot Password?</a>
                </div>
                <%--<button type = "submit" class= "btn">--%>Login<%--</button>--%>
                <asp:Button ID="BtnSubmit" runat="server" Text="Login" CssClass="btn" OnClick="BtnSubmit_Click" />
                <div class = "login-register">
                    <p>Dont have an account? <div id="dvRegContent" class ="register-link" onclick="ShowRegister()">Register</div>
                    </p>
                    </div>
            </div>
        </div>
        
        <div class="form-box register" id="dvReg" style="display:none;">
        <h2> Registration</h2>
        
            <div class="input-box">
                <span class="icon"><ion-icon name="mail"></ion-icon></span>
                <input type = "email" required>
                <label>Email</label>
            </div>
            <div class="input-box">
                <span class="icon"><ion-icon name="person"></ion-icon></span>
                <input type = "text" required>
                <label>Username</label>
            </div>
            <div class="input-box">
                <span class="icon"><ion-icon name="lock-closed"></ion-icon></span>
                <input type = "password" required>
                <label>Password</label>
            </div>
            <div class="input-box">
                <span class="icon"><ion-icon name="lock-closed"></ion-icon></span>
                <input type = "password" required>
                <label>Re-enter Password</label>
            </div>
            <div class = "register">
            <div class="remember-forgot">
                <label><input type = "checkbox">
                    I agree to the terms & conditions </label>
                </div>
                <button type = "submit" class= "btn">Register</button>
                <div class = "login-register">
                    <p>Already have an account? <a href ="#" class ="login-link">Login here</a>
                    </p>
                    </div>
            </div>
            
        </div>
        
    </div>
</asp:Content>

