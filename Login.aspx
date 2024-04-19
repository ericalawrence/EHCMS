<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CphBody" Runat="Server">
    <script type="text/javascript">
        function ShowRegister(aDvToShow) {
            window.location = "registration.aspx"
        }
    </script>
    <div class="wrapper"  >
    <div class="form-box login" id="dvLogin">
        <h2 class="login">Login</h2>
        
            <div class="input-box">
                <span class="icon"><ion-icon name="mail"></ion-icon></span>
                
                <asp:TextBox ID="txtEmailLogin" runat="server" />
                <label>Email</label>
            </div>
            <div class="input-box">
                <span class="icon"><ion-icon name="lock-closed"></ion-icon></span>
                
                <asp:TextBox ID="txtPwdLogin" runat="server" TextMode="Password"  />
                <label>Password</label>
            </div>
            <div class = "register">
            <div class="remember-forgot">
                
                    <asp:CheckBox ID="ChkRem" runat="server" />
                    Remember me 
                    <a href="#" class="register-link">Forgot Password?</a>
                </div>
               
                <asp:Button ID="BtnSubmit" runat="server" Text="Login" CssClass="btn" OnClick="BtnSubmit_Click"  />
               
                <div class = "login-register">
                    <p>Dont have an account? <div id="dvRegContent" class ="register-link" onclick="ShowRegister('dvReg')">Register</div>
                    </p>
                    </div>
            </div>
        <asp:Literal ID="lErr" runat="server" />
        </div>
        
        
        
    </div>
</asp:Content>

