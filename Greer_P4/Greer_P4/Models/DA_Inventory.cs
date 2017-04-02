using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;

namespace Greer_P4.Models
{
    public class DA_Inventory
    {
        HttpContext currentContext = HttpContext.Current;

        public SqlDataReader GetProducts()
        {
             string connectionString =
                ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            currentContext.Trace.Warn("connectionString = " + connectionString);
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();

            string sqlString = "Select * From tblInventory " +
                " Order By fldName";
            currentContext.Trace.Warn("sqlStringAllProducts = " + sqlString);

            SqlCommand commandObject = new SqlCommand(sqlString, con);

            SqlDataReader dr = commandObject.ExecuteReader();

            return dr;
        }

        public SqlDataReader GetProductsByCategory(string parCategoryCode)
        {
            string connectionString =
                ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            currentContext.Trace.Warn("connectionString = " + connectionString);
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();

            string sqlString = "Select * From tblInventory " +
                " WHERE fldCatagoryID=@fldCatagoryID" +
                " ORDER BY fldName";
            currentContext.Trace.Warn("sqlStringSelectedProductByCategory = " + sqlString);

            SqlCommand commandObject = new SqlCommand(sqlString, con);

            commandObject.Parameters.AddWithValue("@fldCatagoryID", parCategoryCode);

            SqlDataReader dr = commandObject.ExecuteReader();

            return dr;
        }
        public SqlDataReader GetAProduct(string ParSKU)
        {
            currentContext.Trace.Warn("ParSKU = " + ParSKU);
            string connectionString =
               ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            currentContext.Trace.Warn("connectionString = " + connectionString);
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();

            string sqlString = " Select * From tblInventory" +
                " WHERE fldSKU=@fldSKU " +
                " Order By fldName";

            SqlCommand commandObject = new SqlCommand(sqlString, con);
            commandObject.Parameters.AddWithValue("fldSKU", ParSKU);

            SqlDataReader dr = commandObject.ExecuteReader();
            return dr;

        }
    }
}