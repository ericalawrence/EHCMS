using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            pnlEdit.Visible = false;
            Load();
        }

    }

    protected void BtnEdit_Click(object sender, EventArgs e)
    {
        if (BtnEdit.Text == "Edit")
        {
            Result lRes = new Result(Result.ResultCode.Success);
            Users lUsr = new Users();

            lRes = lUsr.Load(Convert.ToInt16(Session["userid"]));
            if (lRes.IsSuccess)
            {
                pnlEdit.Visible = true;
                PnlNormalMode.Visible = false;
                ddlTitle.ClearSelection();
                ddlGender.ClearSelection();
                ddlTitle.Items.FindByValue(lUsr.Title.ToString()).Selected = true;
                ddlGender.Items.FindByValue(lUsr.Gender.ToString()).Selected = true;
                txtFirstName.Text = lUsr.Fname;
                txtLastName.Text = lUsr.Lname;
                txtdob.Text = lUsr.Dob;
                txtAddress1.Text = lUsr.Address1;
                txtAddress2.Text = lUsr.Address2;
                BtnEdit.Text = "Save";
            }

        }
        else if (BtnEdit.Text == "Save")
        {
            Result lRes = new Result(Result.ResultCode.Success);
            Users aUsr = new Users();

            lRes = aUsr.Load(Convert.ToInt16(Session["userid"]));
            if (lRes.IsSuccess)
            {
                pnlEdit.Visible = true;
                PnlNormalMode.Visible = false;
                aUsr.Title = ddlTitle.SelectedItem.Value;
                aUsr.Fname = txtFirstName.Text.Trim();
                aUsr.Lname = txtLastName.Text.Trim();
                aUsr.Dob = txtdob.Text.Trim();
                aUsr.Gender = Convert.ToInt16(ddlGender.SelectedItem.Value);
                aUsr.Address1 = txtAddress1.Text.Trim();
                aUsr.Address2 = txtAddress2.Text.Trim();
                lRes = aUsr.UpdateUser();
            }
            if (lRes.IsSuccess)
            {
                pnlEdit.Visible = false;
                PnlNormalMode.Visible = true;
                Result.Display(ref lErr, "Updated SuccessFully", Result.ResultCode.Success);
                BtnEdit.Text = "Edit";
                Load();
            }
            else
            {
                Result.Display(ref lErr, "Error", Result.ResultCode.Err);
            }
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
        lRes = lDoc.LoadAll(Convert.ToInt16(Session["userid"]));
        gdImage.DataSource = lRes.ReturnTable;
        gdImage.DataBind();

        }
    protected void UploadBtn_Click(object sender, EventArgs e)
    {
        if (fup.HasFile)
        {
            String path = Server.MapPath("~/"+ Session["userid"]+"/");
            if (!Directory.Exists(path))
            {
                Directory.CreateDirectory(path);
            }
            string ls_FileName = DateTime.Now.Second + fup.FileName;
            fup.SaveAs(Server.MapPath(Session["userid"]+ "//" +ls_FileName));
            Docs  lDocs = new Docs();
            Result lRes = new Result(Result.ResultCode.Success);
            lDocs.Userid = Convert.ToInt16(Session["userid"]);
            ls_FileName = "~//" + Session["userid"] + "//" + ls_FileName;
            lDocs.DocName = ls_FileName;
           lRes= lDocs.SaveDoc();
            if(lRes.IsSuccess)
            {
                Result.Display(ref lErr, "Docs Uploaded", Result.ResultCode.Success);
                Load();
            }
            else
            {
                Result.Display(ref lErr, "Error while Uploading the Document", Result.ResultCode.Err);

            }

        }
        else
        {
            
        }
    }
    protected void gdImage_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Int16 id = Convert.ToInt16(gdImage.DataKeys[e.RowIndex].Value.ToString());
        Docs adoc = new Docs();
        Result lRes = new Result(Result.ResultCode.Success);
       
       lRes= adoc.UpdateDocs(id);
        if(lRes.IsSuccess)
        {
            Result.Display(ref lErr, "Docs Deleted", Result.ResultCode.Success);
        }
        // DAL.ExecuteSQL("")
        Load();
    }
}
