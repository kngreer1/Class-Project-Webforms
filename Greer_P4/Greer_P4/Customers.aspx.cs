using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Greer_P4.Models;
namespace Greer_P4
{
    public partial class Customers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
              if (Page.IsPostBack == false)
              {
                  DA_States invntoryObject = new DA_States();

                  SqlDataReader retrievedData = invntoryObject.GetStates();

                  ddlStates.DataSource = retrievedData;
                  ddlStates.DataTextField = "fldStateName";
                  ddlStates.DataValueField = "fldStateCode";
                  ddlStates.DataBind();
                  ListItem itemToAdd = new ListItem("Please choose a State", "");
                  ddlStates.Items.Insert(0, itemToAdd);
              }
        }

        protected void ddlStates_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedIndex = ddlStates.SelectedValue;

            DA_Customers inventoryObject = new DA_Customers();

            SqlDataReader returnedData = inventoryObject.GetCustomersByState(selectedIndex);

            dtlCustomers.DataSource = returnedData;
            dtlCustomers.DataBind();
        }
    }
}