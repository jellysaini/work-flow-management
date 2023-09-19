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
namespace WorkFlowJobStatus
{
    public interface interJobStatus
    {
        Int32 JobStatusId
        {
            get;
            set;
        }
        String JobStatus
        {
            get;
            set;
        }
    }
    public class ClsJobStatusPrp : interJobStatus
    {
        private Int32  p_JobStatusId;
        private String p_JobStatus;

        #region interJobStatus Members

        public int JobStatusId
        {
            get
            {
                return p_JobStatusId;   
            }
            set
            {
                p_JobStatusId = value;   
            }
        }

        public string JobStatus
        {
            get
            {
                return p_JobStatus; 
            }
            set
            {
                p_JobStatus = value;
            }
        }

        #endregion
    }
    //**************************** CONNECTION CLASS FOR CREATE CONNECTIONS********************// 
    public abstract class ClsCon
    {
        protected SqlConnection con = new SqlConnection();
        public ClsCon()
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        }
    }
    public class ClsJobStatus : ClsCon
    {
        public DataTable Display_JobStatus_TeamLeader()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_Display_JobStatus_Teamleader", con);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                DataTable dt = new DataTable();
                dt.Load(dr);
                DataRow myrow = dt.NewRow();
                myrow[0] = 0;
                myrow[1] = "Select New Status";
                dt.Rows.InsertAt(myrow, 0);
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
        public DataTable Display_JobStatus_Developer()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_Display_JobStatus_Developer", con);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                DataTable dt = new DataTable();
                dt.Load(dr);
                DataRow myrow = dt.NewRow();
                myrow[0] = 0;
                myrow[1] = "Select New Status";
                dt.Rows.InsertAt(myrow, 0);
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
        public String Current_JobStatus(Int32 JobId)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_Current_JobStatus", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@JobId", SqlDbType.Int).Value = JobId;
            try
            {
                SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                String ret = "";
                if (dr.HasRows)
                {
                    dr.Read();
                    ret = dr["JobStatUs"].ToString();
                }
                return ret;
            }
            catch(Exception ex)
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