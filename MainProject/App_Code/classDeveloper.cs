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
namespace WorkFlowDeveloper
{
    public interface interDeve
    {
        Int32 AssignId
        {
            get;
            set;
        }
        Int32 UsrId
        {
            get;
            set;
        }
        Int32 AllocateId
        {
            get;
            set;
        }
        String JobModule
        {
            get;
            set;
        }
        Int32 JobId
        {
            get;
            set;
        }
        Int32 TeamLeadId
        {
            get;
            set;
        }
    }
    public class ClsDevPrp : interDeve
    {
        private Int32 p_AssignId;
        private Int32 p_UsrId;
        private Int32 P_AllocateId;
        private String p_JobModule;
        private Int32 p_JobId;
        private Int32 p_TeamLeadId;
        #region interDeve Members

        public int AssignId
        {
            get
            {
                return p_AssignId;
            }
            set
            {
                p_AssignId = value;
            }
        }

        public int UsrId
        {
            get
            {
                return p_UsrId;
            }
            set
            {
                p_UsrId = value;
            }
        }

        public int AllocateId
        {
            get
            {
                return P_AllocateId;
            }
            set
            {
                P_AllocateId = value;
            }
        }

        public string JobModule
        {
            get
            {
                return p_JobModule;
            }
            set
            {
                p_JobModule = value;
            }
        }

        public int JobId
        {
            get
            {
               return  p_JobId;
            }
            set
            {
                p_JobId = value;
            }
        }

        public int TeamLeadId
        {
            get
            {
                return p_TeamLeadId;
            }
            set
            {
                p_TeamLeadId = value;
            }
        }

        #endregion
    }
    public abstract class ClsCon
    {
        protected SqlConnection con = new SqlConnection();
        public ClsCon()
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        }
    }
    public class ClsDeve : ClsCon
    {
        public void Save_Rec(ClsDevPrp p,DateTime Assigndate,Int32 chk)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_Assign_To_Developer", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@UsrId", SqlDbType.Int).Value = p.UsrId;
            cmd.Parameters.Add("@AllocateId", SqlDbType.Int).Value = p.AllocateId;
            cmd.Parameters.Add("@JobId", SqlDbType.Int).Value = p.JobId;
            cmd.Parameters.Add("@TeamLeadId", SqlDbType.Int).Value = p.TeamLeadId;
            cmd.Parameters.Add("@AssignOn", SqlDbType.DateTime).Value = Assigndate;
            cmd.Parameters.Add("@chk", SqlDbType.Int).Value = chk;
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
        public DataTable DisplayJob_ToDeveloper(Int32 UserId)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_View_Job_To_Developer", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@UserId", SqlDbType.Int).Value = UserId;
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
    }

}