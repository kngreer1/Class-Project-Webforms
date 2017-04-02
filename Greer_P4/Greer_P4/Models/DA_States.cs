using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;

namespace Greer_P4.Models
{
    public class DA_States
    {
        HttpContext currentContext = HttpContext.Current;
        
        public SqlDataReader GetStates()
        {
           

            string connectionString =
                ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            currentContext.Trace.Warn("connectionString = " + connectionString);
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();

            string sqlString = "Select * From tblStates " +
                " Order By fldStateName";
            currentContext.Trace.Warn("sqlStringStates = " + sqlString);

            SqlCommand commandObject = new SqlCommand(sqlString, con);

            SqlDataReader dr = commandObject.ExecuteReader();

            return dr;

        }
    }
}