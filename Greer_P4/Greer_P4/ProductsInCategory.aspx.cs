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
    public partial class ProductsInCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                DA_Categories inventoryObject = new DA_Categories();

                SqlDataReader retrievedData = inventoryObject.GetCategories();

                ddlCategories.DataSource = retrievedData;
                ddlCategories.DataTextField = "fldCatagoryName";
                ddlCategories.DataValueField = "fldCatagoryID";
                ddlCategories.DataBind();
                ListItem itemToAdd = new ListItem("Please choose a Category", "");
                ddlCategories.Items.Insert(0, itemToAdd);
            }
        }

        protected void ddlCategories_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedIndex = ddlCategories.SelectedValue;
            Trace.Warn("SelectedIndex = " + selectedIndex);

            DA_Inventory inventoryObject = new DA_Inventory();

            SqlDataReader returnedData = inventoryObject.GetProductsByCategory(selectedIndex);

            grdvInventoryByCategory.DataSource = returnedData;
            grdvInventoryByCategory.DataBind();
        }
    }
}