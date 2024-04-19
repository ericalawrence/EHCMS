using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class appointments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Result lRes = new Result(Result.ResultCode.Success);

          lRes= Common.GetDoctors(Convert.ToInt16(Session["userid"]));
            if(lRes.ReturnTable!=null && lRes.ReturnTable.Rows.Count>0)
            {
                ddlDoctors.DataSource = lRes.ReturnTable;
                
                ddlDoctors.DataValueField = "RowID";
                ddlDoctors.DataTextField = "Name";
                ddlDoctors.DataBind();
            }

        }

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Result lRes = new Result(Result.ResultCode.Success);
        Appointment aPP = new Appointment();
        aPP.DoctorID = Convert.ToInt16 (ddlDoctors.SelectedItem.Value);
        aPP.ApplicantId = Convert.ToInt16(Session["userid"]);
        aPP.AppointmentDate=txtAppointMentDate.Text;
        aPP.Discription = txtAppointmentReason.Text;
       lRes= aPP.SaveAppointment();

        if(lRes.IsSuccess)
        {
            Result.Display(ref lErr, "Appointment Booked", Result.ResultCode.Success);

        }
        else
        {
            Result.Display(ref lErr, "Error While Booking Appointment", Result.ResultCode.Err);
        }

    }
    
}