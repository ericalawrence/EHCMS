using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProfilePharm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Load();
        }
    }
    public void Load()
    {
        Users lUsr = new Users();
        Docs lDoc = new Docs();
        Result lRes = new Result(Result.ResultCode.Success);
        lRes = lUsr.Load(Convert.ToInt16(Session["userid"]));
        if (lRes.IsSuccess)
        {
            lblFullName.Text = lUsr.GetFullName();
            lblDob.Text = lUsr.GetDob();
            lblSex.Text = lUsr.GetFullGender();
            lblAddress.Text = lUsr.Address1;

        }


    }

    protected void BtnLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("login.aspx");
    }
}