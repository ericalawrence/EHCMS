using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MedicineRequests : System.Web.UI.Page
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

        Result lRes = new Result(Result.ResultCode.Success);
        Medicine aMd = new Medicine();
        lRes = aMd.LoadByDoctorID(Convert.ToInt16(Session["userid"]));
        DataTable ldt = new DataTable();
        string ls_AppDate = "";
        DateTime dt;
        if (lRes.IsSuccess && lRes.ReturnTable != null && lRes.ReturnTable.Rows.Count > 0)
        {


            ldt = lRes.ReturnTable;
            ldt.Columns.Add("StatusEdited");
            ldt.Columns.Add("AppointmentDateEdited");
            for (int i = 0; i <= ldt.Rows.Count - 1; i++)
            {
                dt = Common.GetDob(ldt.Rows[i]["RequestDate"].ToString());

                //if (dt <= System.DateTime.UtcNow.AddMinutes(-330))
                //{
                //    ldt.Rows[i]["StatusEdited"] = "Lapsed";
                //}
                //else
                //{
                //    ldt.Rows[i]["StatusEdited"] = "Upcoming";

                //}
                ldt.Rows[i]["AppointmentDateEdited"] = dt.ToLongDateString();

            }
            ldt.AcceptChanges();
            gdMedReq.DataSource = ldt;
            gdMedReq.DataBind();

        }



    }

    protected void gdMedReq_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Result lRes = new Result(Result.ResultCode.Success);
        if (e.CommandName == "Approve")
        {
            Int16 index = Convert.ToInt16(e.CommandArgument);

            lRes = Medicine.UpdateStatus(1, index);
            if (lRes.IsSuccess)
            {
                Medicine aMd = new Medicine();
                Users Ausr = new Users();
                lRes = aMd.LoadByID(index);
                if (lRes.IsSuccess)
                {
                    Ausr.Load(aMd.ApplicantId);

                }
                if (lRes.IsSuccess)
                {
                    Common.SendEmail(Ausr.Email, "Congrats Your Medicine Request is Approved By Doctor", "Appointment Approved");
                }
            }

        }

        if (e.CommandName == "Reject") // other command names etc etc...
        {
            Int16 index = Convert.ToInt16(e.CommandArgument);
            lRes = Medicine.UpdateStatus(2, index);
            if (lRes.IsSuccess)
            {
                Medicine aMd = new Medicine();
                Users Ausr = new Users();
                lRes = aMd.LoadByID(index);
                if (lRes.IsSuccess)
                {
                    Ausr.Load(aMd.ApplicantId);

                }
                if (lRes.IsSuccess)
                {
                    Common.SendEmail(Ausr.Email, "Sorry Your Medicine Request has been Rejected By Doctor", "Appointment Rejected");
                }
            }
        }
        Response.Redirect("MedicineRequests.aspx");
    }
}