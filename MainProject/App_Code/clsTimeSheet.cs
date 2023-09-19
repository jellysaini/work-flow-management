using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace nsTimeSheet
{
    /******************* Interface declaration*******************************/
    public interface intTimeSheet
    {
        Int32 p_TimeSheetId
        {
            get;
            set;
        }

        Int32 p_UserId
        {
            get;
            set;
        }

        Int32 p_JobId
        {
            get;
            set;
        }

        DateTime p_StartTime
        {
            get;
            set;
        }

        DateTime p_EndTime
        {
            get;
            set;
        }

        DateTime p_AddOnDate
        {
            get;
            set;
        }

        Int32 p_JobModuleId
        {
            get;
            set;
        }
    }

    /***********************Property Class implementing interface*****************************/
    public class clsTimeSheetPrp : intTimeSheet
    {
        private Int32 pvtTimeSheetId;
        private Int32 pvtUserId;
        private Int32 pvtJobId;
        private Int32 pvtJobModuleId;
        private DateTime pvtStartTime;
        private DateTime pvtEndTime;
        private DateTime pvtAddOnDate;
        #region intTimeSheet Members

        public int p_TimeSheetId
        {
            get
            {
                return pvtTimeSheetId;
            }
            set
            {
                pvtTimeSheetId = value;
            }
        }

        public int p_UserId
        {
            get
            {
                return pvtUserId;
            }
            set
            {
                pvtUserId = value;
            }
        }

        public int p_JobId
        {
            get
            {
                return pvtJobId;
            }
            set
            {
                pvtJobId = value;
            }
        }

        public DateTime p_StartTime
        {
            get
            {
                return pvtStartTime;
            }
            set
            {
                pvtStartTime = value;
            }
        }

        public DateTime p_EndTime
        {
            get
            {
                return pvtEndTime;
            }
            set
            {
                pvtEndTime = value;
            }
        }

        public DateTime p_AddOnDate
        {
            get
            {
                return pvtAddOnDate;
            }
            set
            {
                pvtAddOnDate = value;
            }
        }

        public int p_JobModuleId
        {
            get
            {
                return pvtJobModuleId;
            }
            set
            {
                pvtJobModuleId = value;
            }
        }

        #endregion
    }

    /***********************Unique absract class for connection******************************************************/
    public abstract class clscon
    {
        protected SqlConnection con = new SqlConnection();
        public clscon()
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        }
    }

    /**********************Main class*******************************************************/
    public class clsTimeSheet : clscon
    {
        //******************************************Method to save the TimeSheet**************************//
        public void Save_TimeSheet(clsTimeSheetPrp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_TimeSheetInsert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@AddOnDate", SqlDbType.DateTime).Value = p.p_AddOnDate;
            cmd.Parameters.Add("@StartTime", SqlDbType.DateTime).Value = p.p_StartTime;
            cmd.Parameters.Add("@EndTime", SqlDbType.DateTime).Value = p.p_EndTime;
            cmd.Parameters.Add("@UsrId", SqlDbType.Int).Value = p.p_UserId;
            cmd.Parameters.Add("@JobId", SqlDbType.Int).Value = p.p_JobId;
            cmd.Parameters.Add("@JobModuleId", SqlDbType.Int).Value = p.p_JobModuleId;
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                cmd.Dispose();
                con.Close();
            }

        }
        public DataTable Display_TimeSheet(Int32 UserId)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_View_TimeSheet", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@UsrId", SqlDbType.Int).Value = UserId;
            try
            {
                SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                DataTable dt = new DataTable();
                dt.Load(dr);
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                cmd.Dispose();
                con.Close();
            }

        }
        public void Delete_TimeSheet(Int32 TimeSheetId)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_delete_TimeSheet", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@TimeSheetId", SqlDbType.Int).Value = TimeSheetId;
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                cmd.Dispose();
                con.Close();
            }

        }
        public DateTime GetLastTime(Int32 UsrId,DateTime da)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_getLastTime", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@UsrId", SqlDbType.Int).Value = UsrId;
            cmd.Parameters.Add("@EndDate", SqlDbType.DateTime).Value = da;
            
            try
            {
                SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                DataTable dt = new DataTable();
                DateTime datett = new DateTime();
                if (dr.HasRows)
                {
                    dt.Load(dr);
                    datett = Convert.ToDateTime(dt.Rows[0]["EndTime"]);
                }
                return datett;

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                cmd.Dispose();
                con.Close();
            }


        }
        public clsTimeSheetPrp Find_TimeSheet(Int32 TimeSheetId)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_Find_TimeSheet", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@TimeSheetId", SqlDbType.Int).Value = TimeSheetId;
            try
            {
                SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                clsTimeSheetPrp obj = new clsTimeSheetPrp();
                if (dr.HasRows)
                {
                    dr.Read();
                    obj.p_JobId = Convert.ToInt32(dr["JobId"]);
                    obj.p_AddOnDate = Convert.ToDateTime(dr["AddOnDate"]);
                    obj.p_StartTime = Convert.ToDateTime(dr["StartTime"]);
                    obj.p_EndTime = Convert.ToDateTime(dr["EndTime"]);
                    obj.p_JobModuleId = Convert.ToInt32(dr["JobModuleId"]);
                }
                return obj;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                cmd.Dispose();
                con.Close();
            }

        }
        public void Update_TimeSheet(clsTimeSheetPrp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_Update_TimeSheet", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@TimeSheetId", SqlDbType.Int).Value = p.p_TimeSheetId;
            cmd.Parameters.Add("@UsrId", SqlDbType.Int).Value = p.p_UserId;
            cmd.Parameters.Add("@JobId", SqlDbType.Int).Value = p.p_JobId;
            cmd.Parameters.Add("@JobModuleId", SqlDbType.Int).Value = p.p_JobModuleId;
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                cmd.Dispose();
                con.Close();
            }
            

        }
        
        
    }
}
