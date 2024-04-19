using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Appointment
/// </summary>
public class Appointment
{
    public Appointment()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    private Int16 _AppointMentID;
    private Int16 _DoctorID;
    private Int16 _ApplicantId;
    private string _AppointmentDate;
    private string _Discription;
    private bool _IsVerified;
    private bool _IsDeleted;

    public Int16 AppointMentID
    {
        get { return _AppointMentID; }
        set { _AppointMentID = value; }
    }
    public Int16 DoctorID
    {
        get { return _DoctorID; }
        set { _DoctorID = value; }
    }
    public Int16 ApplicantId
    {
        get { return _ApplicantId; }
        set { _ApplicantId = value; }
    }
    public string AppointmentDate
    {
        get { return _AppointmentDate; }
        set { _AppointmentDate = value; }
    }
    public string Discription
    {
        get { return _Discription; }
        set { _Discription = value; }
    }
    public bool IsVerified
    {
        get { return _IsVerified; }
        set { _IsVerified = value; }
    }
    public bool IsDeleted
    {
        get { return _IsDeleted; }
        set { _IsDeleted = value; }
    }

    public Result Load(Int16 as_UserID)
    {
        Result lRes = new Result();
        try
        {
            //lRes = DAL.ExecuteSQL("Select * From AppointmentMaster where ApplicantID=@UserID", DAL.SQLType.sqlSelect, "@UserID", as_UserID);
            lRes = DAL.ExecuteSQL("Select Appointmentid,'Dr . ' +Users.Fname +' '+ Users.lname as 'DoctorName',Description,AppointmentDate,'Abc' Status from AppointmentMaster inner join Users on AppointmentMaster.ApplicantID = Users.RowID where users.Rowid = @UserID", DAL.SQLType.sqlSelect, "@UserID", as_UserID);

            if (lRes.IsSuccess && lRes.ReturnTable.Rows.Count > 0)
            {
                _ApplicantId = as_UserID;
                _AppointMentID = Convert.ToInt16(lRes.ReturnTable.Rows[0]["AppointmentID"]);
                _DoctorID = Convert.ToInt16(lRes.ReturnTable.Rows[0]["DoctorID"]);
                _Discription = lRes.ReturnTable.Rows[0]["Description"].ToString();
                _IsDeleted = Convert.ToBoolean(lRes.ReturnTable.Rows[0]["isdeleted"]);
                _IsVerified = Convert.ToBoolean(lRes.ReturnTable.Rows[0]["isverified"]);
                lRes.Code = Result.ResultCode.Success;

            }
            else
            {
                lRes.Info = "Unable to load";
                lRes.Code = Result.ResultCode.NoAction;
            }
            return lRes;
        }
        catch (Exception ex)
        {
            lRes.Info = "Unable to load";
            lRes.Code = Result.ResultCode.Err;
            return lRes;
        }
        finally
        {

        }
    }


    public Result GetAppointment(Int16 as_UserID)
    {
        Result lRes = new Result();
        try
        {
            //lRes = DAL.ExecuteSQL("Select * From AppointmentMaster where ApplicantID=@UserID", DAL.SQLType.sqlSelect, "@UserID", as_UserID);
            lRes = DAL.ExecuteSQL("Select Appointmentid,'Dr . ' +Users.Fname +' '+ Users.lname as 'DoctorName',Description,AppointmentDate,'Abc' Status from AppointmentMaster inner join Users on AppointmentMaster.ApplicantID = Users.RowID where users.Rowid = @UserID", DAL.SQLType.sqlSelect, "@UserID", as_UserID);

            if (lRes.IsSuccess && lRes.ReturnTable.Rows.Count > 0)
            {
                

            }
            else
            {
                lRes.Info = "Unable to load";
                lRes.Code = Result.ResultCode.NoAction;
            }
            return lRes;
        }
        catch (Exception ex)
        {
            lRes.Info = "Unable to load";
            lRes.Code = Result.ResultCode.Err;
            return lRes;
        }
        finally
        {

        }
    }
    public Result SaveAppointment()
    {

        Result lRes = new Result();
        lRes.Info = string.Empty;
        lRes.Code = Result.ResultCode.Success;
        try
        {
            lRes = DAL.ExecuteSQL("insert Into AppointmentMaster (DoctorID,ApplicantID,AppointmentDate,Description)values(@DoctorID,@ApplicantID,@AppointmentDate,@Description)", DAL.SQLType.sqlNQ, "@DoctorID,@ApplicantID,@AppointmentDate,@Description", _DoctorID,_ApplicantId, _AppointmentDate,_Discription);


        }
        catch (Exception ex)
        {
            lRes.Info = "Unable to Save";
            lRes.Code = Result.ResultCode.Err;
            Common.LogMessage("AppointmentClass.SaveAppointment", ex);
        }
        finally
        {
        }
        return lRes;
    }
}