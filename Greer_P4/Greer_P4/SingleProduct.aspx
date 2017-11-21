<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SingleProduct.aspx.cs" Inherits="Greer_P4.SingleProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="ddlInventory" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlInventory_SelectedIndexChanged">
        </asp:DropDownList>
    
    </div>
        <asp:DetailsView ID="dtvSelecetedProduct" runat="server" AutoGenerateRows="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:ImageField DataImageUrlField="fldImageFile" DataImageUrlFormatString="Images/{0}">
                    <ControlStyle Height="100px" Width="100px" />
                </asp:ImageField>
                <asp:BoundField DataField="fldSKU" HeaderText="SKU" SortExpression="fldSKU" />
                <asp:BoundField DataField="fldCatagoryID" HeaderText="Category" SortExpression="fldCatagory" />
                <asp:BoundField DataField="fldName" HeaderText="Product Name" SortExpression="fldName" />
                <asp:BoundField DataField="fldDescription" HeaderText="Description" SortExpression="fldDescription" />
                <asp:BoundField DataField="fldPrice" DataFormatString="{0:C}" HeaderText="Price" SortExpression="fldPrice" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
    </form>
</body>
</html>
