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

namespace WorkFlowReports
{
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
    public class ClsReports : ClsCon
    {
        public DataTable Show_Reports()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_showJobReports", con);
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
        public DataTable Show_Reports_For_User(Int32 UserId)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_ShowUserReports", con);
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
        public DataTable Disply_User()
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
                DataRow myrow = dt.NewRow();
                myrow[0] = 0;
                myrow[1] = "Please Select User";
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
    }
    
}