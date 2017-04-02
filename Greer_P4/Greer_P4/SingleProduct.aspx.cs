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
    public partial class SingleProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                DA_Inventory inventoryObject = new DA_Inventory();

                SqlDataReader retrievedData = inventoryObject.GetProducts();

                ddlInventory.DataSource = retrievedData;
                ddlInventory.DataTextField = "fldName";
                ddlInventory.DataValueField = "fldSKU";
                ddlInventory.DataBind();

                ListItem itemToAdd = new ListItem("Please choose a Product", "");
                ddlInventory.Items.Insert(0, itemToAdd);
            }
        }

        protected void ddlInventory_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedProductID = ddlInventory.SelectedValue;

            DA_Inventory inventoryObject = new DA_Inventory();

            SqlDataReader returnedRecord = inventoryObject.GetAProduct(selectedProductID);

            dtvSelecetedProduct.DataSource = returnedRecord;
            dtvSelecetedProduct.DataBind();


        }
    }
}