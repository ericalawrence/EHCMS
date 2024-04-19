using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class medicine : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Result lRes = new Result(Result.ResultCode.Success);

            lRes = Common.GetDoctors(Convert.ToInt16(Session["userid"]));
            if (lRes.ReturnTable != null && lRes.ReturnTable.Rows.Count > 0)
            {
                ddlDoctors.DataSource = lRes.ReturnTable;

                ddlDoctors.DataValueField = "RowID";
                ddlDoctors.DataTextField = "Name";
                ddlDoctors.DataBind();
            }

        }

    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        Result lRes = new Result(Result.ResultCode.Success);
        Medicine aMed = new Medicine();
        aMed.DoctorID = Convert.ToInt16(ddlDoctors.SelectedItem.Value);
        aMed.ApplicantId = Convert.ToInt16(Session["userid"]);
        aMed.DrugId = Convert.ToInt16(ddlMedicine.SelectedItem.Value);
        if(ddlLast6month.SelectedItem.Value=="1")
        {
            aMed.IsPreLast6Month = true;

        }
        else
        {
            aMed.IsPreLast6Month = false;

        }
        aMed.ReqDate = Common.FormatDateDDMMYYYY( DateTime.UtcNow.Day.ToString(), DateTime.UtcNow.Month.ToString(), DateTime.UtcNow.Year.ToString());
        aMed.Discription = txtSymtom.Text;
        lRes = aMed.SaveMedicineReq();

        if (lRes.IsSuccess)
        {
            Result.Display(ref lErr, "Request Submitted", Result.ResultCode.Success);

        }
        else
        {
            Result.Display(ref lErr, "Error While Reuest Submit", Result.ResultCode.Err);
        }
    }
}