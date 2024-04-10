using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewAppointments : System.Web.UI.Page
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
        if (lRes.IsSuccess && lRes.ReturnTable!=null && lRes.ReturnTable.Rows.Count>0)
        {

            
            ldt = lRes.ReturnTable;
            ldt.Columns.Add("StatusEdited");
            ldt.Columns.Add("AppointmentDateEdited");
            for (int i = 0; i <= ldt.Rows.Count-1; i++)
            {
                dt = Common.GetDob( ldt.Rows[i]["AppointmentDate"].ToString());
                
                if(dt<=System.DateTime.UtcNow.AddMinutes(-330))
                {
                    ldt.Rows[i]["StatusEdited"] = "Attended";
                }
                else
                {
                    ldt.Rows[i]["StatusEdited"] = "Upcoming";

                }
                ldt.Rows[i]["AppointmentDateEdited"] = dt.ToLongDateString();

            }
            ldt.AcceptChanges();
            grdAppointmnet.DataSource = ldt;
            grdAppointmnet.DataBind();

        }
      
        
    }
}