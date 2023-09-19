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
using System.Collections.Generic;

namespace nsworkflowmang
{

/***********************Declaration of interface******************************************/
    public interface intJob
    {
        Int32 p_JobId
        {
            get;
            set;
        }
        String p_JobMainContact
        {
            get;
            set;
        }
        String p_JobName
        {
            get;
            set;
        }
        String p_JobDesc
        {
            get;
            set;
        }
        Int32 p_JobTaxNo
        {
            get;
            set;
        }
        DateTime p_JobFinclYrEnd
        {
            get;
            set;
        }
        DateTime p_JobTrgtdate
        {
            get;
            set;
        }
        float p_JobFeeToClient
        {
            get;
            set;
        }
        float p_JobEstHrs
        {
            get;
            set;
        }
        Int32 p_JobStatus
        {
            get;
            set;
        }
        Int32 p_FirmId
        {
            get;
            set;
        }
        DateTime p_JobStartDate
        {
            get;
            set;
        }
        DateTime p_JobEndDate
        {
            get;
            set;
        }
        Int32 p_UsrId
        {
            get;
            set;
        }
        Int32 p_ParentJobId
        {
            get;
            set;
        }
        Int32 p_JobCode
        {
            get;
            set;
        }
        float p_JobAccounts
        {
            get;
            set;
        }
        float p_JobTaxReturn
        {
            get;
            set;
        }
        float p_JobGSTReturn
        {
            get;
            set;
        }
        float p_JobBenchmarking
        {
            get;
            set;
        }
        float p_JobCashFlowForecast
        {
            get;
            set;
        }
        float p_JobProfitOptimizer
        {
            get;
            set;
        }
        float p_JobAnnualCompanyReturn
        {
            get;
            set;
        }
        float p_JobTotalOutsourcingFee
        {
            get;
            set;
        }
    }

/***********************Property Class implementing interface*****************************/

    public class clsJobPrp : intJob
    {
        private Int32 pvtJobId;
        private String pvtJobMainContact;
        private String pvtJobName;
        private String pvtJobDesc;
        private Int32 pvtJobTaxNo;
        private DateTime pvtJobFinclYeEnd;
        private DateTime pvtJobTargtDate;
        private float pvtFeeToClient;
        private float pvtEstHrs;
        private Int32 pvtJobStatus;
        private Int32 pvtFirmId;
        private DateTime pvtJobStartDate;
        private DateTime pvtJobEndDate;
        private Int32 pvtUsrId;
        private Int32 pvtParentJobId;
        private Int32 pvtJobCode;
        private float pvtJobAccounts;
        private float pvtJobTaxReturn;
        private float pvtJobGSTReturn;
        private float pvtJobBenchmarking;
        private float pvtJobCashFlowForecast;
        private float pvtJobProfitOptimizer;
        private float pvtJobAnnualCompanyReturn;
        private float pvtJobTotalOutSourcingFee;
        #region intJob Members

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

        public string p_JobMainContact
        {
            get
            {
                return pvtJobMainContact;
            }
            set
            {
                pvtJobMainContact = value;
            }
        }

        public string p_JobName
        {
            get
            {
                return pvtJobName;
            }
            set
            {
                pvtJobName = value;
            }
        }

        public string p_JobDesc
        {
            get
            {
                return pvtJobDesc;
            }
            set
            {
                pvtJobDesc = value;
            }
        }

        public int p_JobTaxNo
        {
            get
            {
                return pvtJobTaxNo;
            }
            set
            {
                pvtJobTaxNo = value;
            }
        }

        public DateTime p_JobFinclYrEnd
        {
            get
            {
                return pvtJobFinclYeEnd;
            }
            set
            {
                pvtJobFinclYeEnd = value;
            }
        }

        public DateTime p_JobTrgtdate
        {
            get
            {
                return pvtJobTargtDate;
            }
            set
            {
                pvtJobTargtDate = value;
            }
        }

        public float p_JobFeeToClient
        {
            get
            {
                return pvtFeeToClient;
            }
            set
            {
                pvtFeeToClient = value;
            }
        }

        public float p_JobEstHrs
        {
            get
            {
                return pvtEstHrs;
            }
            set
            {
                pvtEstHrs = value;
            }
        }

        public int p_JobStatus
        {
            get
            {
                return pvtJobStatus;
            }
            set
            {
                pvtJobStatus = value;
            }
        }

        public int p_FirmId
        {
            get
            {
                return pvtFirmId;
            }
            set
            {
                pvtFirmId = value;
            }
        }

        public DateTime p_JobStartDate
        {
            get
            {
                return pvtJobStartDate;
            }
            set
            {
                pvtJobStartDate = value;
            }
        }

        public DateTime p_JobEndDate
        {
            get
            {
                return pvtJobEndDate;
            }
            set
            {
                pvtJobEndDate = value;
            }
        }

        public int p_UsrId
        {
            get
            {
                return pvtUsrId;
            }
            set
            {
                pvtUsrId = value;
            }
        }

        public int p_ParentJobId
        {
            get
            {
                return pvtParentJobId;
            }
            set
            {
                pvtParentJobId = value;
            }
        }

        public int p_JobCode
        {
            get
            {
                return pvtJobCode;
            }
            set
            {
                pvtJobCode = value;
            }
        }

        public float p_JobAccounts
        {
            get
            {
                return pvtJobAccounts;
            }
            set
            {
                pvtJobAccounts = value;
            }
        }

        public float p_JobTaxReturn
        {
            get
            {
                return pvtJobTaxReturn;
            }
            set
            {
                pvtJobTaxReturn = value;
            }
        }

        public float p_JobGSTReturn
        {
            get
            {
                return pvtJobGSTReturn;
            }
            set
            {
                pvtJobGSTReturn = value;
            }
        }

        public float p_JobBenchmarking
        {
            get
            {
                return pvtJobBenchmarking;
            }
            set
            {
                pvtJobBenchmarking = value;
            }
        }

        public float p_JobCashFlowForecast
        {
            get
            {
                return pvtJobCashFlowForecast;
            }
            set
            {
                pvtJobCashFlowForecast = value;
            }
        }

        public float p_JobProfitOptimizer
        {
            get
            {
                return pvtJobProfitOptimizer;
            }
            set
            {
                pvtJobProfitOptimizer = value;
            }
        }

        public float p_JobAnnualCompanyReturn
        {
            get
            {
                return pvtJobAnnualCompanyReturn;
            }
            set
            {
                pvtJobAnnualCompanyReturn = value;
            }
        }

        public float p_JobTotalOutsourcingFee
        {
            get
            {
                return pvtJobTotalOutSourcingFee;
            }
            set
            {
                pvtJobTotalOutSourcingFee = value;
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

    public class clsJob : clscon
    {

         //******************************************Method to save the Job**************************//
        public void Save_Job(clsJobPrp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_JobInsert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@JobMainContact",SqlDbType.VarChar,50).Value=p.p_JobMainContact;
            cmd.Parameters.Add("@JobName", SqlDbType.VarChar, 50).Value = p.p_JobName;
            cmd.Parameters.Add("@JobTaxNo", SqlDbType.Int).Value = p.p_JobTaxNo;
            cmd.Parameters.Add("@JobFinclYrEnd", SqlDbType.DateTime).Value = p.p_JobFinclYrEnd;
            cmd.Parameters.Add("@JobTrgtdate", SqlDbType.DateTime).Value = p.p_JobTrgtdate;
            cmd.Parameters.Add("@JobFeeToClient", SqlDbType.Float).Value = p.p_JobFeeToClient;
            cmd.Parameters.Add("@JobEstHrs", SqlDbType.Float).Value = p.p_JobEstHrs;
            cmd.Parameters.Add("@JobDesc", SqlDbType.VarChar, 300).Value = p.p_JobDesc;
            cmd.Parameters.Add("@FirmId", SqlDbType.Int).Value = p.p_FirmId;
            cmd.Parameters.Add("@JobStatus",SqlDbType.Int).Value=p.p_JobStatus;
            cmd.Parameters.Add("@ParentJobId", SqlDbType.Int).Value = p.p_ParentJobId;
            cmd.Parameters.Add("@JobCode",SqlDbType.Int).Value=p.p_JobCode;
            cmd.Parameters.Add("@JobAccounts",SqlDbType.Float).Value=p.p_JobAccounts;
            cmd.Parameters.Add("@JobTaxReturn",SqlDbType.Float).Value=p.p_JobTaxReturn;
            cmd.Parameters.Add("@JobGSTReturn",SqlDbType.Float).Value=p.p_JobGSTReturn;
            cmd.Parameters.Add("@JobBenchmarking",SqlDbType.Float).Value=p.p_JobBenchmarking;
            cmd.Parameters.Add("@JobCashFlowForecast",SqlDbType.Float).Value=p.p_JobCashFlowForecast;
            cmd.Parameters.Add("@JobProfitOptimizer",SqlDbType.Float).Value=p.p_JobProfitOptimizer;
            cmd.Parameters.Add("@JobAnnualCompanyReturn",SqlDbType.Float).Value=p.p_JobAnnualCompanyReturn;
            cmd.Parameters.Add("@JobTotalOutSourcingFee",SqlDbType.Float).Value=p.p_JobTotalOutsourcingFee;
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
      
        //*******************************************Method Display the All Firm Name******************//
       public DataTable Show_Firm()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_jobfirmval", con);
            cmd.CommandType = CommandType.StoredProcedure;

            try
            {
                SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                DataTable dt = new DataTable();
                dt.Load(dr);
                DataRow myrow = dt.NewRow();
                myrow[0] = 0;
                myrow[1] = "Please Select Firm";
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
        
        //**************************************Method Display all jobs*****************************//
       public DataTable Display_Job()
       {
           if (con.State == ConnectionState.Closed)
           {
               con.Open();
           }
           SqlCommand cmd = new SqlCommand("sp_displayJob", con);
           cmd.CommandType = CommandType.StoredProcedure;
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
        
        //*******************************Method for Allocate Job********************************//
       public void AllocateJob(clsJobPrp p,DateTime Allocatedate)
       {
           if (con.State == ConnectionState.Closed)
           {
               con.Open();
           }
           SqlCommand cmd = new SqlCommand("sp_Allocate", con);
           cmd.CommandType = CommandType.StoredProcedure;
           cmd.Parameters.Add("@UsrId", SqlDbType.Int).Value = p.p_UsrId;
           cmd.Parameters.Add("@JobId", SqlDbType.Int).Value = p.p_JobId;
           cmd.Parameters.Add("@JobStatus", SqlDbType.Int).Value = p.p_JobStatus;
           cmd.Parameters.Add("@AllocateOn", SqlDbType.DateTime).Value = Allocatedate;
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
       
        //*********************************Methode to find the job********************************/
       public clsJobPrp Find_Job(clsJobPrp p)
       {
           clsJobPrp objprp = new clsJobPrp();
           if (con.State == ConnectionState.Closed)
           {
               con.Open();
           }
           SqlCommand cmd = new SqlCommand("sp_JobFind",con);
           cmd.CommandType = CommandType.StoredProcedure;
           cmd.Parameters.Add("@JobId",SqlDbType.Int).Value=p.p_JobId;
           try
           {
               SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
               if (dr.HasRows)
               {
                   dr.Read();
                   objprp.p_FirmId =Convert.ToInt32( dr["FirmId"].ToString());
                   objprp.p_JobAccounts = (float)Convert.ToDouble(dr["JobAccounts"].ToString());
                   objprp.p_JobAnnualCompanyReturn = (float)Convert.ToDouble(dr["JobAnnualCompanyReturn"].ToString());
                   objprp.p_JobBenchmarking = (float)Convert.ToDouble(dr["JobBenchmarking"].ToString());
                   objprp.p_JobCashFlowForecast = (float)Convert.ToDouble(dr["JobCashFlowForecast"].ToString());
                   objprp.p_JobCode = Convert.ToInt32(dr["JobCode"].ToString());
                   objprp.p_JobDesc = dr["JobDesc"].ToString();
                   //objprp.p_JobEndDate = Convert.ToDateTime(dr["JobEndDate"].ToString());
                   objprp.p_JobEstHrs = (float)Convert.ToDouble(dr["JobEstHrs"].ToString());
                   objprp.p_JobFeeToClient = (float)Convert.ToDouble(dr["JobFeeToClient"].ToString());
                   objprp.p_JobFinclYrEnd = Convert.ToDateTime(dr["JobFinclYrEnd"].ToString());
                   objprp.p_JobGSTReturn = (float)Convert.ToDouble(dr["JobGSTReturn"].ToString());
                   objprp.p_JobMainContact = dr["JobMainContact"].ToString();
                   objprp.p_JobName = dr["JobName"].ToString();
                   objprp.p_JobTrgtdate = Convert.ToDateTime(dr["JobTrgtDate"].ToString());
                   objprp.p_JobProfitOptimizer = (float)Convert.ToDouble(dr["JobProfitOptimizer"].ToString());
                   //objprp.p_JobStartDate = Convert.ToDateTime(dr["JobStartDate"].ToString());
                   //objprp.p_JobStatus = Convert.ToInt32(dr["JobStatus"].ToString());
                   objprp.p_JobTaxNo = Convert.ToInt32(dr["JobTaxNo"].ToString());
                   objprp.p_JobTaxReturn = (float)Convert.ToDouble(dr["JobTaxReturn"].ToString());
                   objprp.p_JobTotalOutsourcingFee = (float)Convert.ToDouble(dr["JobTotalOutSourcingFee"].ToString());
                   objprp.p_ParentJobId = Convert.ToInt32(dr["ParentJobId"].ToString());
                   //objprp.p_UsrId = Convert.ToInt32(dr["UsrId"].ToString());
               }
               return objprp;
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
        
      //***********************Method to update the job*******************************/
       public void Update_Job(clsJobPrp p)
       {
           if (con.State == ConnectionState.Closed)
           {
               con.Open();
           }
           SqlCommand cmd = new SqlCommand("sp_UpdateJob",con);
           cmd.CommandType = CommandType.StoredProcedure;
           cmd.Parameters.Add("@JobId",SqlDbType.Int).Value=p.p_JobId;
           cmd.Parameters.Add("@JobName",SqlDbType.VarChar,50).Value=p.p_JobName;
           cmd.Parameters.Add("@JobDesc",SqlDbType.VarChar,300).Value=p.p_JobDesc;
           cmd.Parameters.Add("@JobTaxNo",SqlDbType.Int).Value=p.p_JobTaxNo;
           cmd.Parameters.Add("@JobFinclYrEnd",SqlDbType.DateTime).Value=p.p_JobFinclYrEnd;
           cmd.Parameters.Add("@JobTrgtDate",SqlDbType.DateTime).Value=p.p_JobTrgtdate;
           cmd.Parameters.Add("@JobFeeToClient",SqlDbType.Float).Value=p.p_JobFeeToClient;
           cmd.Parameters.Add("@JobEstHrs",SqlDbType.Float).Value=p.p_JobEstHrs;
           cmd.Parameters.Add("@ParentJobId",SqlDbType.Int).Value=p.p_ParentJobId;
           cmd.Parameters.Add("@JobCode",SqlDbType.Int).Value=p.p_JobCode;
           cmd.Parameters.Add("@MoreFee", SqlDbType.Float).Value = p.p_JobTotalOutsourcingFee;
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
       public DataTable View_job_to_Teamleader(Int32 UsrId)
       {
           if (con.State == ConnectionState.Closed)
           {
               con.Open();
           }
           SqlCommand cmd = new SqlCommand("sp_View_JobToTeamLeader", con);
           cmd.CommandType = CommandType.StoredProcedure;
           cmd.Parameters.Add("@UsrId", SqlDbType.Int).Value = UsrId;
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
       public void Update_Job_StatUs(clsJobPrp p)
       {
           if (con.State == ConnectionState.Closed)
           {
               con.Open();
           }
           SqlCommand cmd = new SqlCommand("sp_Update_JobStatus", con);
           cmd.CommandType = CommandType.StoredProcedure;
           cmd.Parameters.Add("@JobId", SqlDbType.Int).Value = p.p_JobId;
           cmd.Parameters.Add("@jobStatus", SqlDbType.Int).Value = p.p_JobStatus;
           cmd.Parameters.Add("@JobEndDate", SqlDbType.DateTime).Value = p.p_JobEndDate;
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
       public void Delete_Job(Int32 JobId)
       {
           if (con.State == ConnectionState.Closed)
           {
               con.Open();
           }
           SqlCommand cmd = new SqlCommand("sp_DeleteJob", con);
           cmd.CommandType = CommandType.StoredProcedure;
           cmd.Parameters.Add("@JobId", SqlDbType.Int).Value = JobId;
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
