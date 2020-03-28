<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ViewDetails.aspx.cs" Inherits="MasterPageDemo.ViewDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    
    <asp:DataList ID="DataList2" runat="server" DataKeyField="p_id" DataSourceID="SqlDataSource2" RepeatDirection="Horizontal">
        <ItemTemplate>
            Product ID:
            <asp:Label ID="p_idLabel" runat="server" Text='<%# Eval("p_id") %>' />
            <br />
            Product Name:
            <asp:Label ID="p_nameLabel" runat="server" Text='<%# Eval("p_name") %>' />
            <br />
            Product Price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            <br />
            Product Category:
            <asp:Label ID="cat_idLabel" runat="server" Text='<%# Eval("cat_id") %>' />
            <br />
            Product Brand:
            <asp:Label ID="brand_idLabel" runat="server" Text='<%# Eval("brand_id") %>' />
            <br />
            <asp:Image ID="Image1" runat="server" Height="205px" ImageUrl='<%# Eval("imageUrl") %>' Width="263px" />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:myDb %>" ProviderName="<%$ ConnectionStrings:myDb.ProviderName %>" SelectCommand="SELECT * FROM [Products] WHERE ([p_id] = @p_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="p_id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>




</asp:Content>
