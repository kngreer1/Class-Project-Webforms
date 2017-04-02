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
        <asp:DataList ID="dtlCustomers" runat="server" BackColor="white" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" RepeatColumns="5">
            <AlternatingItemStyle BackColor="black" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <ItemStyle BackColor="#808080" ForeColor="#ffffff" />
            <ItemTemplate>
                Email:<asp:Label ID="lblEmail" runat="server" Text='<%# Eval("fldEmail") %>'></asp:Label>
                <br />
                First Name:<asp:Label ID="lblFirstName" runat="server" Text='<%# Eval("fldFirstName") %>'></asp:Label>
                <br />
                Last Name:<asp:Label ID="lblLastName" runat="server" Text='<%# Eval("fldLastName") %>'></asp:Label>
                <br />
                Address:<asp:Label ID="lblAddress" runat="server" Text='<%# Eval("fldAddress") %>'></asp:Label>
                <br />
                City:<asp:Label ID="lblCity" runat="server" Text='<%# Eval("fldCity") %>'></asp:Label>
                <br />
                State:<asp:Label ID="lblState" runat="server" Text='<%# Eval("fldState") %>'></asp:Label>
                <br />
                Zip:<asp:Label ID="lblZipCode" runat="server" Text='<%# Eval("fldZipCode") %>'></asp:Label>
                <br />
                Phone:<asp:Label ID="lblPhoneNumber" runat="server" Text='<%# Eval("fldPhoneNumber") %>'></asp:Label>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        </asp:DataList>
        <br />
        <a href="Admin_Home.aspx">Back to home</a>

    </form>
</body>
</html>
