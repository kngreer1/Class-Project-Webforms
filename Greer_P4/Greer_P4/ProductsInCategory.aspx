<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductsInCategory.aspx.cs" Inherits="Greer_P4.ProductsInCategory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="ddlCategories" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCategories_SelectedIndexChanged">
        </asp:DropDownList>
    
    </div>
        <asp:GridView ID="grdvInventoryByCategory" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:ImageField DataImageUrlField="fldImageFile" DataImageUrlFormatString="Images/{0}">
                    <ControlStyle Height="100px" Width="100px" />
                </asp:ImageField>
                <asp:BoundField DataField="fldSKU" HeaderText="SKU" SortExpression="fldSKU" />
                <asp:BoundField DataField="fldCatagoryID" HeaderText="CategoryID" SortExpression="fldCategoryID" />
                <asp:BoundField DataField="fldName" HeaderText="Name" SortExpression="fldName" />
                <asp:BoundField DataField="fldDescription" HeaderText="Description" SortExpression="fldDescription" />
                <asp:BoundField DataField="fldPrice" HeaderText="Price" SortExpression="fldPrice" DataFormatString="{0:C}" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </form>
</body>
</html>
