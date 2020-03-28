<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ProductsByCategory.aspx.cs" Inherits="MasterPageDemo.ProductsByCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:DataList ID="DataList1" runat="server" DataKeyField="p_id" DataSourceID="SqlDataSource1" ItemStyle-HorizontalAlign="Center" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
<ItemStyle HorizontalAlign="Center"></ItemStyle>
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="150" Width="150" ImageUrl='<%# Eval("imageUrl") %>' />
                <br />
                &nbsp;<asp:Label ID="p_nameLabel" runat="server" Text='<%# Eval("p_name") %>' />
                <br />
                Rs
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                /-<br />
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Add to Cart" />
                <br />
                <asp:Button ID="Button2" runat="server" Font-Bold="True" CommandArgument='<%# Eval("p_id") %>' CommandName="ViewDetails" Text="View Details" />
                <br />
            </ItemTemplate>
            <SeparatorStyle HorizontalAlign="Center" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myDb %>" ProviderName="<%$ ConnectionStrings:myDb.ProviderName %>" SelectCommand="SELECT * FROM [Products] WHERE ([cat_id] = @cat_id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="cat_id" QueryStringField="cat_id" Type="Int32" />
            </SelectParameters>
</asp:SqlDataSource>
    
   
    <br />
    <br />
    
   
</asp:Content>
