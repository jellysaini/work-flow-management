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
namespace WorkFlow
{
    //*****************************************************************************************//
    //****************************************INTERFACE****************************************//
    //*****************************************************************************************//
    

    //*******************INTERFACE AND PROERTY FOR USER**************************************//
    public interface interUsr
    {
        Int32 UsrId
        {
            get;
            set;
        }
        String UsrName
        {
            get;
            set;
        }
        String UsrEmailAdd
        {
            get;
            set;
        }
        String UsrPassword
        {
            get;
            set;
        }
        Int32 UsrDesignation
        {
            get;
            set;
        }
        Int32 UsrSalary
        {
            get;
            set;
        }
        Int32 UsrSalaryDuration
        {
            get;
            set;
        }
        DateTime UsrRegDate
        {
            get;
            set;
        }
        DateTime UsrLstLgnDate
        {
            get;
            set;
        }
        Int32 UsrStatus
        {
            get;
            set;
        }
        Int32 UsrUpperId
        {
            get;
            set;
        }


    }
    //*****************************************************************************************//
    //*************************************DATA INFORMATION CLASS******************************//
    //*****************************************************************************************//
    public class ClsUsrPrp : interUsr
    {
        private Int32 UserId;
        private String UserName;
        private String UserEmailAdd;
        private String UserPassword;
        private Int32 UserDesignation;
        private Int32 UserSalary;
        private Int32 UserSalaryDuration;
        private DateTime UserRegDate;
        private DateTime UserLstLgnDate;
        private Int32 UserStatus;
        private Int32 UserUpperId;
        #region interUsr Members
        public int UsrId
        {
            get
            {
                return UserId;
            }
            set
            {
                UserId = value;
            }
        }

        public string UsrName
        {
            get
            {
                return UserName;
            }
            set
            {
                UserName = value;
            }
        }

        public string UsrEmailAdd
        {
            get
            {
                return UserEmailAdd;
            }
            set
            {
                UserEmailAdd = value;
            }
        }

        public string UsrPassword
        {
            get
            {
                return UserPassword;
            }
            set
            {
                UserPassword = value;
            }
        }

        public int UsrDesignation
        {
            get
            {
                return UserDesignation;
            }
            set
            {
                UserDesignation = value;
            }
        }

        public int UsrSalary
        {
            get
            {
                return UserSalary;
            }
            set
            {
                UserSalary = value;
            }
        }

        public int UsrSalaryDuration
        {
            get
            {
                return UserSalaryDuration;
            }
            set
            {
                UserSalaryDuration = value;
            }
        }

        public DateTime UsrRegDate
        {
            get
            {
                return UserRegDate;
            }
            set
            {
                UserRegDate = value;
            }
        }

        public DateTime UsrLstLgnDate
        {
            get
            {
                return UserLstLgnDate;
            }
            set
            {
                UserLstLgnDate = value;
            }
        }

        public int UsrStatus
        {
            get
            {
                return UserStatus;
            }
            set
            {
                UserStatus = value;
            }
        }

        public int UsrUpperId
        {
            get
            {
                return UserUpperId;
            }
            set
            {
                UserUpperId = value;
            }
        }

        #endregion
    }
    //*****************************************************************************************//
    //***********************************CONNECTION CLASS**************************************//
    //*****************************************************************************************//

    //**************************** CONNECTION CLASS FOR CREATE CONNECTIONS********************// 
    public abstract class ClsCon
    {
        protected SqlConnection con = new SqlConnection();
        public ClsCon()
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        }
    }
    //*****************************************************************************************//
    //************************************MAIN LOGICAL CLASS***********************************//
    //*****************************************************************************************//

    //*********************************ClsUsr CLASS FOR USER PROCESS**************************//
    public class ClsUsr : ClsCon
    {
        //************FOR ADD NEW USER***********************************//
        public void Save_Usr(ClsUsrPrp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_insertUsr", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@UsrName", SqlDbType.VarChar, 50).Value = p.UsrName;
            cmd.Parameters.Add("@UsrEmailAdd", SqlDbType.VarChar, 50).Value = p.UsrEmailAdd;
            cmd.Parameters.Add("@UsrPassword", SqlDbType.VarChar, 50).Value = p.UsrPassword;
            cmd.Parameters.Add("@UsrDesignation", SqlDbType.Int).Value = p.UsrDesignation;
            cmd.Parameters.Add("@UsrSalary", SqlDbType.Int).Value = p.UsrSalary;
            cmd.Parameters.Add("@UsrSalaryDuration", SqlDbType.Int).Value = p.UsrSalaryDuration;
            cmd.Parameters.Add("@UsrRegDate", SqlDbType.DateTime).Value = p.UsrRegDate;
            cmd.Parameters.Add("@UsrStatus", SqlDbType.Int).Value = p.UsrStatus;
            cmd.Parameters.Add("UsrUpperId", SqlDbType.Int).Value = p.UsrUpperId;
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
        //*************FOR UPDATE USER**********************************//
        public void Update_Usr(ClsUsrPrp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_updateUsr", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@UsrId", SqlDbType.Int).Value = p.UsrId;
            cmd.Parameters.Add("@UsrName", SqlDbType.VarChar, 50).Value = p.UsrName;
            cmd.Parameters.Add("@UsrEmailAdd", SqlDbType.VarChar, 50).Value = p.UsrEmailAdd;
            cmd.Parameters.Add("@UsrPassword", SqlDbType.VarChar, 50).Value = p.UsrPassword;
            cmd.Parameters.Add("@UsrDesignation", SqlDbType.Int).Value = p.UsrDesignation;
            cmd.Parameters.Add("@UsrSalary", SqlDbType.BigInt).Value = p.UsrSalary;
            cmd.Parameters.Add("@UsrSalaryDuration", SqlDbType.Int).Value = p.UsrSalaryDuration;
            cmd.Parameters.Add("@UsrStatus", SqlDbType.Int).Value = p.UsrStatus;
            cmd.Parameters.Add("@UsrUpperId", SqlDbType.Int).Value = p.UsrUpperId;
            
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
        //*********************FOR DELETE USER**************************//
        public void Delete_Usr(ClsUsrPrp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_deleteUsr", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@UsrId", SqlDbType.Int).Value = p.UsrId;
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
        //**********************FOR FIND USER****************************//
        public ClsUsrPrp Find_Usr(ClsUsrPrp p)
        {
            ClsUsrPrp objprp = new ClsUsrPrp();
            if (con.State == ConnectionState.Closed)
            {
                con.Open();

            }
            SqlCommand cmd = new SqlCommand("sp_findUsr", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@UsrId", SqlDbType.Int).Value = p.UsrId;
            try
            {
                SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                if (dr.HasRows)
                {
                    dr.Read();
                    objprp.UsrName = dr["UsrName"].ToString();
                    objprp.UsrEmailAdd = dr["UsrEmailAdd"].ToString();
                    objprp.UsrPassword = dr["UsrPassword"].ToString();
                    objprp.UsrDesignation = Convert.ToInt32(dr["UsrDesignation"]);
                    objprp.UsrSalary = Convert.ToInt32(dr["UsrSalary"]);
                    objprp.UsrSalaryDuration = Convert.ToInt32(dr["UsrSalaryDuration"]);
                    objprp.UsrStatus = Convert.ToInt32(dr["UsrStatus"]);
                    objprp.UsrUpperId = Convert.ToInt32(dr["UsrUpperId"]);
                   
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
        //****************************FOR DISPLAY ALL USERS****************//
        public DataTable Display_Usr()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_displayUsr", con);
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
       //*******************FOR DISPLAY USER DESIGNATION*******************//
        public DataTable Display_UsrDesignation()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_displayUsrDesignation", con);
            cmd.CommandType = CommandType.StoredProcedure;
            
            try
            {
                SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                DataTable dt = new DataTable();
                dt.Load(dr);               
                DataRow myrow = dt.NewRow();
                myrow[0] = 0;
                myrow[1] = "Please Select User Level";
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
        //******************FOR DISPLAY USER SALARY DURATION****************//
        public DataTable Display_SalaryDuration()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_displaySalaryDuration", con);
            cmd.CommandType = CommandType.StoredProcedure;
            
            try
            {
                SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                DataTable dt = new DataTable();
                dt.Load(dr);
                DataRow myrow = dt.NewRow();
                myrow[0] = 0;
                myrow[1] = "Please Select User Rate";
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
        //*********************FOR DISPLAY TEAMLEADER NAME********************//
        public DataTable Display_TeamLead()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_displayTeamlead", con);
            cmd.CommandType = CommandType.StoredProcedure;
            
            try
            {
                SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                DataTable dt = new DataTable();
                dt.Load(dr);
                DataRow myrow = dt.NewRow();
                myrow[0] = 0;
                myrow[1] = "Please Select Teamleader";
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
        //********************************DISPLAY TEAMLEADER FOR ALLOCATE JOB**********************//
        public DataTable Display_TeamLead_Allocate()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_displayTeamlead", con);
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
        //***************************DISPLAY TEAMLEADER AFTER ALLOCATE THE JOB*****************//
        public DataTable Display_After_Allocate_Job(Int32 UsrId)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_After_Aloocate_Teamleader", con);
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
        //********************************FOR DISPLAY STATUS************************//
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
        //******************************************FOR ALLOCATED TEAMLOEADER TO JOB******************//
        public DataTable Allocate_TeamLead(Int32 UsrId)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_AllocateTeamleader",con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@UsrId", SqlDbType.Int).Value = UsrId;
            try
            {
                SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);  
                DataTable dt = new DataTable();
                dt.Load(dr);
                return dt;
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
        //*****************************FOR CHANGE PASSWORD***************************//
        public Int32 ChangePasword(String oldpass, String newpass,Int32 UsrId)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_changePassword", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@UsrPassword", SqlDbType.VarChar,50).Value = oldpass;
            cmd.Parameters.Add("@NewUsrPassword", SqlDbType.VarChar, 50).Value =newpass;
            cmd.Parameters.Add("@UsrId", SqlDbType.Int).Value = UsrId;
            SqlParameter p1 = new SqlParameter("@ret", SqlDbType.Int);
            p1.Direction = ParameterDirection.ReturnValue;
            try
            {
                cmd.Parameters.Add(p1);
                cmd.ExecuteNonQuery();
                Int32 k = Convert.ToInt32(cmd.Parameters["@ret"].Value);
                return k;
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
        //********************************FOR FORGET PASSWORD*********************************//
        public Int32 ForgetPassword(String EmailAdd, String newpass)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_forgetPassword", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@UsrEmailAdd", SqlDbType.VarChar, 50).Value = EmailAdd;
            cmd.Parameters.Add("@UsrPassword", SqlDbType.VarChar, 50).Value = newpass;
            SqlParameter p1 = new SqlParameter("@ret", SqlDbType.Int);
            p1.Direction = ParameterDirection.ReturnValue;
            try
            {
                cmd.Parameters.Add(p1);
                cmd.ExecuteNonQuery();
                Int32 k = Convert.ToInt32(cmd.Parameters["@ret"].Value);
                return k;
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
        //********************************For Displaying developer under peryicula team leader"*********// 
        public DataTable Display_Developer_To_Sentmail(ClsUsrPrp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("sp_Display_Developer_To_Mail", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@UsrUpperId", SqlDbType.Int).Value = p.UsrId;
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
        //********************************For Displaying team leader a well as Developer**************//
        public DataTable Display_All_To_Sentmail(ClsUsrPrp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("sp_Mail_To_All", con);
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
        //*****************Method to display users to TeamLeader****************************//
        public DataTable Display_Users_To_TeamLeader(Int32 uid,Int32 jid)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_DisplayUsersToTeamLeader", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@UserId", SqlDbType.Int).Value = uid;
            cmd.Parameters.Add("@JobId", SqlDbType.Int).Value = jid;
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
    //*****************************************************************************************//
    //*******************************LOGICAL CLASS FOR LOGIN USER******************************//
    //*****************************************************************************************//

    //*********************************************CLASS FOR LOGIN USER***********************//
    public class ClsLgnUsr : ClsCon
    {
        public int LgnUsr(String UsrEmailAdd, String UsrPassword, out int UsrDesignation,out String UsrName)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_loginCheck", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@UsrEmailAdd", SqlDbType.VarChar, 50).Value = UsrEmailAdd;
            cmd.Parameters.Add("@UsrPassword", SqlDbType.VarChar, 50).Value = UsrPassword;
            cmd.Parameters.Add("@UsrId", SqlDbType.Int).Direction = ParameterDirection.Output;
            cmd.Parameters.Add("@UsrName", SqlDbType.VarChar, 50).Direction = ParameterDirection.Output;
            cmd.Parameters.Add("@UsrDesignation", SqlDbType.Int).Direction = ParameterDirection.Output;
            try
            {
                cmd.ExecuteNonQuery();
                UsrDesignation = Convert.ToInt32(cmd.Parameters["@UsrDesignation"].Value);
                UsrName =Convert.ToString(cmd.Parameters["@UsrName"].Value);
                Int32 a = Convert.ToInt32(cmd.Parameters["@UsrId"].Value);
                return a;
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
        //*****************************FOR UPDATE LAST LOGIN DATE****************************//
        public void Update_LstLgnDate(ClsUsrPrp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_upd_lstlgnDate", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@UsrId", SqlDbType.Int).Value = p.UsrId;
            cmd.Parameters.Add("@UsrLstLgnDate", SqlDbType.DateTime).Value = p.UsrLstLgnDate;
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
