using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AppointmentRequests : System.Web.UI.Page
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
        Appointment aPp = new Appointment();
        lRes = aPp.GetAppointment(Convert.ToInt16(Session["userid"]));
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
                dt = Common.GetDob(ldt.Rows[i]["AppointmentDate"].ToString());

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
            gdAppointment.DataSource = ldt;
            gdAppointment.DataBind();

        }
       


    }
    protected void gdAppointment_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Int16 id = Convert.ToInt16(gdAppointment.DataKeys[e.RowIndex].Value.ToString());
        Docs adoc = new Docs();
        Result lRes = new Result(Result.ResultCode.Success);

        //lRes = adoc.UpdateDocs(id);
        if (lRes.IsSuccess)
        {
            Result.Display(ref lErr, "Docs Deleted", Result.ResultCode.Success);
        }
        // DAL.ExecuteSQL("")
        Load();
    }
    protected void gdAppointment_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Result lRes = new Result(Result.ResultCode.Success);

        if (e.CommandName == "Approve")
        {
            Int32 index = Convert.ToInt32(e.CommandArgument);
            
           lRes= Appointment.UpdateAppointStatus(1, index);
            if(lRes.IsSuccess)
            {
                Appointment App = new Appointment();
                Users Ausr = new Users();
             lRes=   App.LoadByID(index);
                if(lRes.IsSuccess)
                {
                    Ausr.Load(App.ApplicantId);

                }
                if(lRes.IsSuccess)
                {
                    Common.SendEmail(Ausr.Email,"Congrats Your AppointMent is Approved","Appointment Approved");
                }
            }
           
        }

        if (e.CommandName == "Reject") // other command names etc etc...
        {
            Int32 index = Convert.ToInt32(e.CommandArgument);
            lRes = Appointment.UpdateAppointStatus(2, index);
            if (lRes.IsSuccess)
            {
                Appointment App = new Appointment();
                Users Ausr = new Users();
                lRes = App.LoadByID(index);
                if (lRes.IsSuccess)
                {
                    Ausr.Load(App.ApplicantId);

                }
                if (lRes.IsSuccess)
                {
                    Common.SendEmail(Ausr.Email, "Sorry Your AppointMent has been Rejected", "Appointment Rejected");
                }
            }
        }
        Response.Redirect("AppointmentRequests.aspx");
    }
}