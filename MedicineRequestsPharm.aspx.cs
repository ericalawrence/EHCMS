using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MedicineRequestsPharm : System.Web.UI.Page
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
        lRes = aMd.LoadAll();
        DataTable ldt = new DataTable();
        string ls_AppDate = "";
        DateTime dt;
        if (lRes.IsSuccess && lRes.ReturnTable != null && lRes.ReturnTable.Rows.Count > 0)
        {


            ldt = lRes.ReturnTable;
            ldt.Columns.Add("StatusEdited");
            ldt.Columns.Add("AppointmentDateEdited");
            ldt.Columns.Add("DrugName");

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
                ldt.Rows[i]["DrugName"] =DrugName(Convert.ToInt16( ldt.Rows[i]["DrugID"]));

            }
            ldt.AcceptChanges();
            gdMedReq.DataSource = ldt;
            gdMedReq.DataBind();

        }



    }

    private string DrugName(int id)
    {
        switch (id)
        {
            case 0:
                return "Nizoral";
                break;
            case 1:
                return "Atorvastatin";
                break;
            case 2:
                return "Metformin";
                break;
             default:
                return "Metformin";
                break;

        }
    }

        protected void gdMedReq_RowCommand(object sender, GridViewCommandEventArgs e)
     {
        Result lRes = new Result(Result.ResultCode.Success);
        if (e.CommandName == "ChkStock")
        {
            Int16 index = Convert.ToInt16(e.CommandArgument);

            lRes = Medicine.UpdateStatus(3, index);
            if (lRes.IsSuccess)
            {
                Medicine aMd = new Medicine();
                Users Ausr = new Users();
                lRes = aMd.LoadByID(index);
                if (lRes.IsSuccess)
                {
                    Ausr.Load(aMd.ApplicantId);

                }
                
            }

        }

        if (e.CommandName == "Ready") // other command names etc etc...
        {
            Int16 index = Convert.ToInt16(e.CommandArgument);
            lRes = Medicine.UpdateStatus(4, index);
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
                    Common.SendEmail(Ausr.Email, "Your Medicine Request Is Ready For Collection", "Medicine Request");
                }
            }
        }
        Response.Redirect("MedicineRequestsPharm.aspx");
    }
}