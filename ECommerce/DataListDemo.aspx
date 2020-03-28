<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataListDemo.aspx.cs" Inherits="MasterPageDemo.DataListDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:DataList ID="DataList1" runat="server" DataKeyField="p_id" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="111px" ImageUrl='<%# Eval("imageUrl") %>' Width="200px" />
                <br />
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("p_id") %>'></asp:Label>
                <table align="center" class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("p_id") %>' CommandName="viewDetails" OnClick="Button1_Click" Text="Add to cart" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:HyperLink ID="HyperLink1" runat="server">View Details</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myDb %>" ProviderName="<%$ ConnectionStrings:myDb.ProviderName %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
        
    </div>
    </form>
</body>
</html>
