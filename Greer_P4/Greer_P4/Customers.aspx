<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="Greer_P4.Customers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="ddlStates" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlStates_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
    
    </div>
        <asp:DataList ID="dtlCustomers" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" RepeatColumns="3">
            <AlternatingItemStyle BackColor="#F7F7F7" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <ItemTemplate>
                <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("fldEmail") %>'></asp:Label>
                <br />
                <asp:Label ID="lblFirstName" runat="server" Text='<%# Eval("fldFirstName") %>'></asp:Label>
                <br />
                <asp:Label ID="lblLastName" runat="server" Text='<%# Eval("fldLastName") %>'></asp:Label>
                <br />
                <asp:Label ID="lblAddress" runat="server" Text='<%# Eval("fldAddress") %>'></asp:Label>
                <br />
                <asp:Label ID="lblCity" runat="server" Text='<%# Eval("fldCity") %>'></asp:Label>
                <br />
                <asp:Label ID="lblState" runat="server" Text='<%# Eval("fldState") %>'></asp:Label>
                <br />
                <asp:Label ID="lblZipCode" runat="server" Text='<%# Eval("fldZipCode") %>'></asp:Label>
                <br />
                <asp:Label ID="lblPhoneNumber" runat="server" Text='<%# Eval("fldPhoneNumber") %>'></asp:Label>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        </asp:DataList>
    </form>
</body>
</html>
