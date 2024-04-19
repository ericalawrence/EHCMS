using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class registration : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack && Request.Url.ToString().Contains("localhost"))
        {
            Fill();
        }
        if (Session["userid"] != null)
        {
            Users aUsr = new Users();
            Result lRes = new Result(Result.ResultCode.Success);
            lRes = aUsr.Load(Convert.ToInt16(Session["userid"]));
            if (lRes.IsSuccess)
            {
                ddlTitle.SelectedItem.Value =aUsr.Title;
                txtFirstName.Text = aUsr.Fname;
                txtLastName.Text = aUsr.Lname;
                aUsr.Dob = txtdob.Text.Trim();
               ddlGender.SelectedItem.Value = aUsr.Gender.ToString();
                txtAddress1.Text = aUsr.Address1;
                aUsr.Address2 = txtAddress2.Text = aUsr.Address2;
                aUsr.City = txtCity.Text.Trim();
                aUsr.Pincode = txtPostCode.Text.Trim();
                aUsr.Email = txtEmail.Text.Trim();

            }

        }
    }
    public  void Fill()
    {
        
            foreach (Control x in this.Controls)
            {

                if (x is TextBox)
                {
                    ((TextBox)x).Text = x.ID;
                }
            }

            MasterPage ctl00 = FindControl("ctl00") as MasterPage;

            // Get a reference to the ContentPlaceHolder
            ContentPlaceHolder mainContent = ctl00.FindControl("CphBody") as ContentPlaceHolder;

            foreach (Control y in mainContent.Controls)
            {
                if (y is TextBox)
                {
                    if (y.ID == "txtConfirmPassword")
                    {
                        ((TextBox)y).Text = "txtPassword";
                    }
                else if (y.ID == "txtPostCode")
                {
                    ((TextBox)y).Text = "12345678";
                }
               else if (y.ID == "txtdob")
                {
                    ((TextBox)y).Text = "13031985";
                }
                //13032024

                else
                {
                        ((TextBox)y).Text = y.ID;
                    }
                }
                if (y is CheckBoxList)
                {
                    //((CheckBoxList)y).Items[0].Selected=true;
                    //((CheckBoxList)y).Items[1].Selected = true;
                    foreach (ListItem c in ((CheckBoxList)y).Items)
                    {
                        c.Selected = true;
                    }
                }
                if (y is RadioButtonList)
                {
                   // ((RadioButtonList)y).SelectedIndex = 0;
                }

                if (y is DropDownList)
                {
                    ((DropDownList)y).SelectedIndex = 1;
                }

            }
        
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Result lRes = new Result(Result.ResultCode.Success);
        StringBuilder lMsg = new StringBuilder ();
        int counter = 0;

        if (txtFirstName.Text.Trim().Length == 0)
        {
            counter += 1;
            lMsg.Append(counter.ToString() + ":" + "First Name is Required</br>");

            lRes.Code = Result.ResultCode.NoAction;
        }
        if (txtLastName.Text.Trim().Length == 0)
        {
            counter += 1;
            lMsg.Append(counter.ToString() + ":" + "Last Name is Required</br>");

            lRes.Code = Result.ResultCode.NoAction;
        }
        if (txtdob.Text.Trim().Length == 0)
        {
            counter += 1;
            lMsg.Append(counter.ToString() + ":" + "Dob is Required</br>");

            lRes.Code = Result.ResultCode.NoAction;
        }
        else
        {
            if(Common.IsDateTime(txtdob.Text.Trim()))
            {
                //do stuff
                //counter += 1;
                //lMsg.Append(counter.ToString() + ":" + "Dob is In Valid</br>");

                //lRes.Code = Result.ResultCode.NoAction;

            }
            else
            {
                //do stuff
                counter += 1;
                lMsg.Append(counter.ToString() + ":" + "Dob is Invalid</br>");

                lRes.Code = Result.ResultCode.NoAction;

            }



        }

        if (lRes.IsSuccess)
        {
            Users aUsr = new Users();
            // DateTime dt = new DateTime(txtdob.Text);
            aUsr.Title = ddlTitle.SelectedItem.Value;
            aUsr.Fname = txtFirstName.Text.Trim();
            aUsr.Lname = txtLastName.Text.Trim();
            aUsr.Dob = txtdob.Text.Trim();
            aUsr.Gender = Convert.ToInt16(ddlGender.SelectedItem.Value);
            aUsr.Address1 = txtAddress1.Text.Trim();
            aUsr.Address2 = txtAddress2.Text.Trim();
            aUsr.City = txtCity.Text.Trim();
            aUsr.Pincode = txtPostCode.Text.Trim();
            aUsr.Email = txtEmail.Text.Trim();
            if (rdbBornCity.SelectedItem!=null && rdbBornCity.SelectedItem.Value == "1")
            {
                aUsr.IsBornInEngland = true;
            }
            else
            {
                aUsr.IsBornInEngland = false;
            }

            if (chkDisease.SelectedItem != null)
            {
                List<bool> lb_SelectedDisease = new List<bool>();
                //aUsr.IsHaveAsthma = (chkDisease.SelectedIndex == "0") ? true : false;
                //aUsr.IsHaveDiabetes = (chkDisease.SelectedItem.Value == "1") ? true : false;
                //aUsr.IsHaveHeartDisease = (chkDisease.SelectedItem.Value == "2") ? true : false;
                //aUsr.IsHaveCancer = (chkDisease.SelectedItem.Value == "3") ? true : false;
                //aUsr.IsHaveStroke = (chkDisease.SelectedItem.Value == "4") ? true : false;
                //aUsr.IsHaveArthritis = (chkDisease.SelectedItem.Value == "5") ? true : false;
                foreach (ListItem item in chkDisease.Items)
                {
                    if (item.Selected)
                    {
                        lb_SelectedDisease.Add(true);
                    }
                    else
                    {
                        lb_SelectedDisease.Add(false);
                    }

                }
                for (int i = 0; i <= lb_SelectedDisease.Count - 1; i++)
                {
                    if (i == 0)
                    {
                        aUsr.IsHaveAsthma = lb_SelectedDisease[i];
                    }
                    else if (i == 1)
                    {
                        aUsr.IsHaveDiabetes = lb_SelectedDisease[i];
                    }
                    else if (i == 2)
                    {
                        aUsr.IsHaveHeartDisease = lb_SelectedDisease[i];
                    }
                    else if (i == 3)
                    {
                        aUsr.IsHaveCancer = lb_SelectedDisease[i];
                    }
                    else if (i == 4)
                    {
                        aUsr.IsHaveStroke = lb_SelectedDisease[i];
                    }
                    else if (i == 5)
                    {
                        aUsr.IsHaveArthritis = lb_SelectedDisease[i];
                    }
                }
            }
            else
            {
                aUsr.IsHaveAsthma = false;
                aUsr.IsHaveDiabetes = false;
                aUsr.IsHaveHeartDisease = false;
                aUsr.IsHaveCancer = false;
                aUsr.IsHaveStroke = false;
                aUsr.IsHaveArthritis = false;
            }
            aUsr.DrinkingStatus = Convert.ToInt16(ddlDrinkStatus.SelectedItem.Value);
            aUsr.SmokingStatus = Convert.ToInt16(ddlSmokingStatus.SelectedItem.Value);
            aUsr.Password = Encrypter.Encrypt(txtPassword.Text.Trim());
            lRes = aUsr.SaveUser();
            if (lRes.IsSuccess)
            {
                Result.Display(ref lErr, "Saved", lRes.Code);
            }
            else
            {
                Result.Display(ref lErr, lRes.Info, lRes.Code);
            }
        }
        else
        {
            Result.Display(ref lErr, lMsg.ToString(), lRes.Code);
        }
    }

    
}
