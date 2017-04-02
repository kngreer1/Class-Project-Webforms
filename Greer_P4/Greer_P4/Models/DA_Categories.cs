using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;

namespace Greer_P4.Models
{
    public class DA_Categories
    {
        HttpContext currentContext = HttpContext.Current;

        public SqlDataReader GetCategories()
        {

            string connectionString =
              ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            currentContext.Trace.Warn("connectionString = " + connectionString);
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();

            string sqlString = " Select * From tblCategories " +
                " Order By fldCatagoryName";
            currentContext.Trace.Warn("sqlStringCategories = " + sqlString);

            SqlCommand commandOject = new SqlCommand(sqlString, con);

            SqlDataReader dr = commandOject.ExecuteReader();

            return dr;

        }
    }
}