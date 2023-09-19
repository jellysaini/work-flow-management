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

namespace nsWorkFlowManagement
{

/******************* Interface declaration*******************************/            

    public interface intFirm
    {
        Int32 p_FirmId
        {
            get;
            set;
        }
        String p_FirmName
        {
            get;
            set;
        }

        String p_FirmContactPerson
        {
            get;
            set;
        }

        String p_FirmEmailAddress
        {
            get;
            set;
        }

        String p_FirmAddress
        {
            get;
            set;
        }

        String p_FirmCityTown
        {
            get;
            set;
        }

        String p_FirmCountry
        {
            get;
            set;
        }

        Int32 p_FirmPostalCode
        {
            get;
            set;
        }

        Int32 p_FirmWorkPhone
        {
            get;
            set;
        }

        String p_FirmFacsimle
        {
            get;
            set;
        }

        String p_FirmWebAddress
        {
            get;
            set;
        }

        float p_FirmAccount
        {
            get;
            set;
        }

        float p_FirmTaxReturn
        {
            get;
            set;
        }

        float p_FirmGstReturn
        {
            get;
            set;
        }

        float p_FirmBenchMarking
        {
            get;
            set;
        }

        float p_FirmCashFlow
        {
            get;
            set;
        }

        Int32 p_FirmProfit
        {
            get;
            set;
        }

        float p_FirmAnnualCompanyReturn
        {
            get;
            set;
        }

        float p_FirmHourlyFee
        {
            get;
            set;
        }

        float p_FirmOtherFee
        {
            get;
            set;
        }

        String p_FirmDescription
        {
            get;
            set;
        }

        Int32 p_FirmStatus
        {
            get;
            set;
        }
        DateTime p_FirmRegnDate
        {
            get;
            set;
        }

    }

/*******************Property class impementing the intrface*************/
    public class clsFirmPrp : intFirm
    {
        private Int32 pvtFirmId;
        private Int32 pvtFirmPostalCode;
        private Int32 pvtFirmWorkPhone;
        private float pvtFirmTaxReturn;
        private float pvtFirmGstReturn;
        private Int32 pvtFirmProfit;
        private float pvtFirmAnnualCompanyReturn;
        private float pvtFirmHourlyFee;
        private float pvtFirmOtherFee;
        private Int32 pvtFirmStatus;
        private String pvtFirmName;
        private String pvtFirmContactPerson;
        private String pvtFirmEmailAddress;
        private String pvtFirmAddress;
        private String pvtFirmCityTown;
        private String pvtFirmCountry;
        private String pvtFirmFacsimle;
        private String pvtFirmWebAddress;
        private float pvtFirmAccount;
        private float pvtFirmBenchmarking;
        private float pvtFirmCashFlow;
        private String pvtFirmDescription;
        private DateTime pvtFirmRegnDate;

        #region intFirm Members

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

        public string p_FirmName
        {
            get
            {
                return pvtFirmName;
            }
            set
            {
                pvtFirmName = value;
            }
        }

        public string p_FirmContactPerson
        {
            get
            {
                return pvtFirmContactPerson;
            }
            set
            {
                pvtFirmContactPerson = value;
            }
        }

        public string p_FirmEmailAddress
        {
            get
            {
                return pvtFirmEmailAddress;
            }
            set
            {
                pvtFirmEmailAddress = value;
            }
        }

        public string p_FirmAddress
        {
            get
            {
                return pvtFirmAddress;
            }
            set
            {
                pvtFirmAddress = value;
            }
        }

        public string p_FirmCityTown
        {
            get
            {
                return pvtFirmCityTown;
            }
            set
            {
                pvtFirmCityTown = value;
            }
        }

        public string p_FirmCountry
        {
            get
            {
                return pvtFirmCountry;
            }
            set
            {
                pvtFirmCountry = value;
            }
        }

        public int p_FirmPostalCode
        {
            get
            {
                return pvtFirmPostalCode;
            }
            set
            {
                pvtFirmPostalCode = value;
            }
        }

        public int p_FirmWorkPhone
        {
            get
            {
                return pvtFirmWorkPhone;
            }
            set
            {
                pvtFirmWorkPhone = value;
            }
        }

        public string p_FirmFacsimle
        {
            get
            {
                return pvtFirmFacsimle;
            }
            set
            {
                pvtFirmFacsimle = value;
            }
        }

        public string p_FirmWebAddress
        {
            get
            {
                return pvtFirmWebAddress;
            }
            set
            {
                pvtFirmWebAddress = value;
            }
        }

        public float p_FirmAccount
        {
            get
            {
                return pvtFirmAccount;
            }
            set
            {
                pvtFirmAccount = value;
            }
        }

        public float p_FirmTaxReturn
        {
            get
            {
                return pvtFirmTaxReturn;
            }
            set
            {
                pvtFirmTaxReturn = value;
            }
        }

        public float p_FirmGstReturn
        {
            get
            {
                return pvtFirmGstReturn;
            }
            set
            {
                pvtFirmGstReturn = value;
            }
        }

        public float p_FirmBenchMarking
        {
            get
            {
                return pvtFirmBenchmarking;
            }
            set
            {
                pvtFirmBenchmarking = value;
            }
        }

        public float p_FirmCashFlow
        {
            get
            {
                return pvtFirmCashFlow;
            }
            set
            {
                pvtFirmCashFlow = value;
            }
        }

        public int p_FirmProfit
        {
            get
            {
                return pvtFirmProfit;
            }
            set
            {
                pvtFirmProfit = value;
            }
        }

        public float p_FirmAnnualCompanyReturn
        {
            get
            {
                return pvtFirmAnnualCompanyReturn;
            }
            set
            {
                pvtFirmAnnualCompanyReturn = value;
            }
        }

        public float p_FirmHourlyFee
        {
            get
            {
                return pvtFirmHourlyFee;
            }
            set
            {
                pvtFirmHourlyFee = value;
            }
        }

        public float p_FirmOtherFee
        {
            get
            {
                return pvtFirmOtherFee;
            }
            set
            {
                pvtFirmOtherFee = value;
            }
        }

        public string p_FirmDescription
        {
            get
            {
                return pvtFirmDescription;
            }
            set
            {
                pvtFirmDescription = value;
            }
        }

        public int p_FirmStatus
        {
            get
            {
                return pvtFirmStatus;
            }
            set
            {
                pvtFirmStatus = value;
            }
        }

        public DateTime p_FirmRegnDate
        {
            get
            {
                return pvtFirmRegnDate;
            }
            set
            {
                pvtFirmRegnDate = value;
            }
        }

        #endregion
    }


/******************* An unique abstract class for connection*************/            
    public abstract class clscon
    {
        protected SqlConnection con = new SqlConnection();
        public clscon()
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        }
    }

    
/******************* Main firm class***********************************/
    public class clsFirm : clscon
    {
        /****************** Method to save the firm**************************/
        public void Save_Firm(clsFirmPrp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_FirmInsert";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            cmd.Parameters.Add("@FirmName", SqlDbType.VarChar, 50).Value = p.p_FirmName;
            cmd.Parameters.Add("@FirmContactPerson", SqlDbType.VarChar, 50).Value = p.p_FirmContactPerson;
            cmd.Parameters.Add("@FirmEmailAddress", SqlDbType.VarChar, 50).Value = p.p_FirmEmailAddress;
            cmd.Parameters.Add("@FirmAddress", SqlDbType.VarChar, 50).Value = p.p_FirmAddress;
            cmd.Parameters.Add("@FirmCityTown", SqlDbType.VarChar, 50).Value = p.p_FirmCityTown;
            cmd.Parameters.Add("@FirmCountry", SqlDbType.VarChar, 50).Value = p.p_FirmCountry;
            cmd.Parameters.Add("@FirmPostalCode", SqlDbType.Int).Value = p.p_FirmPostalCode;
            cmd.Parameters.Add("@FirmWorkPhone", SqlDbType.Int).Value = p.p_FirmWorkPhone;
            cmd.Parameters.Add("@FirmFacsimle", SqlDbType.VarChar, 50).Value = p.p_FirmFacsimle;
            cmd.Parameters.Add("@FirmWebAddress", SqlDbType.VarChar, 50).Value = p.p_FirmWebAddress;
            cmd.Parameters.Add("@FirmAccount", SqlDbType.Float).Value = p.p_FirmAccount;
            cmd.Parameters.Add("@FirmTaxReturn", SqlDbType.Float).Value = p.p_FirmTaxReturn;
            cmd.Parameters.Add("@FirmGstReturn", SqlDbType.Float).Value = p.p_FirmGstReturn;
            cmd.Parameters.Add("@FirmBenchmarking", SqlDbType.Float).Value = p.p_FirmBenchMarking;
            cmd.Parameters.Add("@FirmCashFlow", SqlDbType.Float).Value = p.p_FirmCashFlow;
            cmd.Parameters.Add("@FirmProfit", SqlDbType.Int).Value = p.p_FirmProfit;
            cmd.Parameters.Add("@FirmAnnualCompanyReturn", SqlDbType.Float).Value = p.p_FirmAnnualCompanyReturn;
            cmd.Parameters.Add("@FirmExtraFee", SqlDbType.Float).Value = p.p_FirmHourlyFee;
            cmd.Parameters.Add("@FirmOtherFee", SqlDbType.Float).Value = p.p_FirmOtherFee;
            cmd.Parameters.Add("@FirmDescription", SqlDbType.VarChar, 300).Value = p.p_FirmDescription;
            cmd.Parameters.Add("@FirmStatus", SqlDbType.Int).Value = p.p_FirmStatus;
            cmd.Parameters.Add("@FirmRegnDate", SqlDbType.DateTime).Value = DateTime.Now;
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


        /*******************Method to update the firm**************************/
        public void Update_Firm(clsFirmPrp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_FirmUpdate";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            cmd.Parameters.Add("@FirmId", SqlDbType.Int).Value = p.p_FirmId;
            cmd.Parameters.Add("@FirmName", SqlDbType.VarChar, 50).Value = p.p_FirmName;
            cmd.Parameters.Add("@FirmContactPerson", SqlDbType.VarChar, 50).Value = p.p_FirmContactPerson;
            cmd.Parameters.Add("@FirmEmailAddress", SqlDbType.VarChar, 50).Value = p.p_FirmEmailAddress;
            cmd.Parameters.Add("@FirmAddress", SqlDbType.VarChar, 50).Value = p.p_FirmAddress;
            cmd.Parameters.Add("@FirmCityTown", SqlDbType.VarChar, 50).Value = p.p_FirmCityTown;
            cmd.Parameters.Add("@FirmCountry", SqlDbType.VarChar, 50).Value = p.p_FirmCountry;
            cmd.Parameters.Add("@FirmPostalCode", SqlDbType.Int).Value = p.p_FirmPostalCode;
            cmd.Parameters.Add("@FirmWorkPhone", SqlDbType.Int).Value = p.p_FirmWorkPhone;
            cmd.Parameters.Add("@FirmFacsimle", SqlDbType.VarChar, 50).Value = p.p_FirmFacsimle;
            cmd.Parameters.Add("@FirmWebAddress", SqlDbType.VarChar, 50).Value = p.p_FirmWebAddress;
            cmd.Parameters.Add("@FirmAccount", SqlDbType.Float).Value = p.p_FirmAccount;
            cmd.Parameters.Add("@FirmTaxReturn", SqlDbType.Float).Value = p.p_FirmTaxReturn;
            cmd.Parameters.Add("@FirmGstReturn", SqlDbType.Float).Value = p.p_FirmGstReturn;
            cmd.Parameters.Add("@FirmBenchmarking", SqlDbType.Float).Value = p.p_FirmBenchMarking;
            cmd.Parameters.Add("@FirmCashFlow", SqlDbType.Float).Value = p.p_FirmCashFlow;
            cmd.Parameters.Add("@FirmProfit", SqlDbType.Int).Value = p.p_FirmProfit;
            cmd.Parameters.Add("@FirmAnnualCompanyReturn", SqlDbType.Float).Value = p.p_FirmAnnualCompanyReturn;
            cmd.Parameters.Add("@FirmHourlyFee", SqlDbType.Float).Value = p.p_FirmHourlyFee;
            cmd.Parameters.Add("@FirmOtherFee", SqlDbType.Float).Value = p.p_FirmOtherFee;
            cmd.Parameters.Add("@FirmDescription", SqlDbType.VarChar, 300).Value = p.p_FirmDescription;
            cmd.Parameters.Add("@FirmStatus", SqlDbType.Int).Value = p.p_FirmStatus;
            //cmd.Parameters.Add("@FirmRegnDate", SqlDbType.DateTime).Value = p.p_FirmRegnDate;
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


        /*******************Method to display the firm************************/
        public DataTable Display_Firm()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_FirmDisplay", con);
            //cmd.CommandText = "sp_FirmDisplay";
            cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Connection = con;

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


        /*******************Method to find the firm************************/
        public clsFirmPrp Find_Firm(clsFirmPrp p)
        {
            clsFirmPrp objprp = new clsFirmPrp();
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_FirmFind", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@FirmId", SqlDbType.Int).Value = p.p_FirmId;
            //cmd.Parameters.Add("@FirmName",SqlDbType.VarChar,50).Value=objprp.p_FirmName;
            try
            {
                SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                if (dr.HasRows)
                {
                    dr.Read();
                    objprp.p_FirmName = dr["FirmName"].ToString();
                    objprp.p_FirmAccount =(float)( Convert.ToDouble(dr["FirmAccount"]));
                    objprp.p_FirmContactPerson = dr["FirmContactPerson"].ToString();
                    objprp.p_FirmEmailAddress = dr["FirmEmailAddress"].ToString();
                    objprp.p_FirmAddress = dr["FirmAddress"].ToString();
                    objprp.p_FirmCityTown = dr["FirmCityTown"].ToString();
                    objprp.p_FirmCountry = dr["FirmCountry"].ToString();
                    objprp.p_FirmPostalCode = Convert.ToInt32(dr["FirmPostalCode"].ToString());
                    objprp.p_FirmWorkPhone = Convert.ToInt32(dr["FirmWorkPhone"].ToString());
                    objprp.p_FirmFacsimle = dr["FirmFacsimle"].ToString();
                    objprp.p_FirmWebAddress = dr["FirmWebAddress"].ToString();
                    objprp.p_FirmTaxReturn = Convert.ToInt32(dr["FirmTaxReturn"].ToString());
                    objprp.p_FirmGstReturn = Convert.ToInt32(dr["FirmGSTReturn"].ToString());
                    objprp.p_FirmBenchMarking = (float)Convert.ToDouble(dr["FirmBenchMarking"].ToString());
                    objprp.p_FirmCashFlow = (float)Convert.ToDouble(dr["FirmCashFlow"].ToString());
                    objprp.p_FirmProfit = Convert.ToInt32(dr["FirmProfit"].ToString());
                    objprp.p_FirmAnnualCompanyReturn = Convert.ToInt32(dr["FirmAnnualCompanyReturn"].ToString());
                    objprp.p_FirmHourlyFee = Convert.ToInt32(dr["FirmHourlyFee"].ToString());
                    objprp.p_FirmOtherFee = Convert.ToInt32(dr["FirmOtherFee"].ToString());
                    objprp.p_FirmDescription = dr["FirmDescription"].ToString();
                    objprp.p_FirmStatus = Convert.ToInt32(dr["FirmStatus"].ToString());
                    objprp.p_FirmRegnDate = Convert.ToDateTime(dr["FirmRegnDate"].ToString());
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


        /*******************Method to delete the firm************************/
        public void Delete_Firm(clsFirmPrp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_FirmDelete", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@FirmId", SqlDbType.Int).Value = p.p_FirmId;
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


        /*******************Method to display the firm status in the dropdown list******/
        public DataTable Display_Status()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_displayStatus", con);
            cmd.CommandType = CommandType.StoredProcedure;

            try
            {
                SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                DataTable dt = new DataTable();
                dt.Load(dr);
                DataRow myrow = dt.NewRow();
                myrow[0] = 0;
                myrow[1] = "Please Select Status";
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
       
        //********************************Method to show job data on selection while adding****************//
        public clsFirmPrp Show_Job_Data_On_Selection(clsFirmPrp p)
        {
            clsFirmPrp objprp = new clsFirmPrp();
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_Show_Job_Data_On_Selection", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@FirmId", SqlDbType.Int).Value = p.p_FirmId;
            try
            {
                SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                if (dr.HasRows)
                {
                    dr.Read();
                    objprp.p_FirmContactPerson = dr["FirmContactPerson"].ToString();
                    objprp.p_FirmBenchMarking = (float)Convert.ToDouble(dr["FirmBenchmarking"].ToString());
                    objprp.p_FirmCashFlow = (float)Convert.ToDouble(dr["FirmCashFlow"].ToString());
                    objprp.p_FirmProfit = Convert.ToInt32(dr["FirmProfit"].ToString());
                    objprp.p_FirmGstReturn = (float)Convert.ToDouble(dr["FirmGSTReturn"].ToString());
                    objprp.p_FirmAnnualCompanyReturn = (float)Convert.ToDouble(dr["FirmAnnualCompanyReturn"].ToString());
                    objprp.p_FirmOtherFee = (float)Convert.ToDouble(dr["FirmOtherFee"].ToString());
                    objprp.p_FirmAccount = (float)Convert.ToDouble(dr["FirmAccount"].ToString());
                    objprp.p_FirmTaxReturn = (float)Convert.ToDouble(dr["FirmTaxReturn"].ToString());
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

        public void DeleteFirm(Int32 FirmId)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_DeleteFrim", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@FirmId", SqlDbType.Int).Value = FirmId;
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











/**************************Interface for JobModule**************************************/
    public interface intJobModule
    {
        Int32 p_ModuleId
        {
            get;
            set;
        }

        String p_ModuleName
        {
            get;
            set;
        }

        String p_ModuleType
        {
            get;
            set;
        }
    }


/*********************Property class for JobModule*****************************/
    public class clsJobModulePrp : intJobModule
    {
        private Int32 pvtModuleId;
        private String pvtModuleName;
        private String pvtModuleType;
        #region intJobModule Members

        public int p_ModuleId
        {
            get
            {
                return pvtModuleId;
            }
            set
            {
                pvtModuleId = value;
            }
        }

        public string p_ModuleName
        {
            get
            {
                return pvtModuleName;
            }
            set
            {
                pvtModuleName = value;
            }
        }

        public string p_ModuleType
        {
            get
            {
                return pvtModuleType;
            }
            set
            {
                pvtModuleType = value;
            }
        }

        #endregion
    }


/*********************Main class for JobModule***************************/
    public class clsJobModule : clscon
    {

       /****************** Method to save the JobModule**************************/
        public void Save_JobModule(clsJobModulePrp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_JobModuleInsert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@ModuleName", SqlDbType.VarChar, 50).Value = p.p_ModuleName;
            cmd.Parameters.Add("@ModuleType",SqlDbType.Int).Value=p.p_ModuleType;
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


        /*****************Method to Update the JobModule*************************/
        public void Update_JobModule(clsJobModulePrp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_JobModuleUpdate", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@ModuleId",SqlDbType.Int).Value=p.p_ModuleId;
            cmd.Parameters.Add("@ModuleName", SqlDbType.VarChar, 50).Value = p.p_ModuleName;
            cmd.Parameters.Add("@ModuleType", SqlDbType.Int).Value = p.p_ModuleType;
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


        /*************Methode to delete the Job Module************************/
        public void Delete_JoModule(clsJobModulePrp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_JobModuleDelete", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@ModuleId", SqlDbType.Int).Value = p.p_ModuleId;
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


        /**************** Methode ti disaply the JObs Module in datalist***************/
        public DataTable Display_JobModule()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_JobModulesDisplay",con);
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


        /******************Method to disaply Job Module Type in DropDownList*********/
        public DataTable Display_JobModuleType()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_DisplayJobModuleType", con);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                DataTable dt = new DataTable();
                dt.Load(dr);
                DataRow myrow = dt.NewRow();
                myrow[0] = 0;
                myrow[1] = "Please select Module Type";
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


        /***************Method to Find the Jobs Module******************************/
        public clsJobModulePrp Find_JobModule(clsJobModulePrp p)
        {
            clsJobModulePrp objprp = new clsJobModulePrp();
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_JobModuleFind",con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@ModuleId",SqlDbType.Int).Value=p.p_ModuleId;
            try
            {
                SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                if (dr.HasRows)
                {
                    dr.Read();
                    objprp.p_ModuleId = Convert.ToInt32(dr["ModuleId"].ToString());
                    objprp.p_ModuleName = dr["ModuleName"].ToString();
                    objprp.p_ModuleType = dr["ModuleType"].ToString();
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

      
    }
}
