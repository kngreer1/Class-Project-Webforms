using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;
namespace Greer_P4.Models
{
    public class DA_Customers
    {
         HttpContext currentContext = HttpContext.Current;
        public SqlDataReader GetCustomersByState(string parStateCode)
         {
             

             string connectionString =
                 ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
             currentContext.Trace.Warn("connectionString = " + connectionString);
             SqlConnection con = new SqlConnection(connectionString);
             con.Open();

             string sqlString = " Select * From tblCustomers " +
                 "WHERE fldState=@fldState " +
                 "Order by fldFirstName ";
             currentContext.Trace.Warn("sqlStringSelectedCustomer = " + sqlString);

             SqlCommand commandObject = new SqlCommand(sqlString, con);

            commandObject.Parameters.AddWithValue("@fldState", parStateCode);

            SqlDataReader dr = commandObject.ExecuteReader();

            return dr;
         }

    }
}