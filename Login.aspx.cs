using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack && Request.Url.ToString().Contains("localhost"))
        {
             //txtEmailLogin.Text = "txtEmail";//Doctor USer
           // txtEmailLogin.Text = "ericalawrence0410@gmail.com";//Patient USer
            //txtEmailLogin.Text = "ram@shyam.com";// Pharma User
            txtPwdLogin.TextMode = TextBoxMode.SingleLine;
            txtPwdLogin.Text = "txtPassword";
        }
        
    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        Result lRes = new Result(Result.ResultCode.Success);
        Users aUsr = new Users();
        lRes = aUsr.Login(txtEmailLogin.Text.Trim(), txtPwdLogin.Text.Trim());
        if (lRes != null && lRes.ReturnTable.Rows.Count > 0)
        {
            Session["userid"]= lRes.ReturnTable.Rows[0]["RowID"];
            if (aUsr.Title =="5")
            {
                Response.Redirect("HomepageDoctor.aspx");
            }
            else if (aUsr.Title == "6")
            {
                Response.Redirect("HomepagePharm.aspx");
            }
            else
            {
                Response.Redirect("HomepageAfterLogin.aspx");
            }
            

        }
        else
        {
            Result.Display(ref lErr, lRes.Info, Result.ResultCode.Err);
        }
    }

   
}