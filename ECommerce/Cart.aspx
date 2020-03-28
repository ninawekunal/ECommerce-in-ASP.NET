<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="MasterPageDemo.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="20pt" Font-Underline="True" Text="CART"></asp:Label>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="c_id" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
        <Columns>
            <asp:TemplateField HeaderText="c_id" InsertVisible="False" SortExpression="c_id">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("c_id") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("c_id") %>'></asp:Label>
                </ItemTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="pro_id" SortExpression="pro_id">
                <EditItemTemplate>
                    <asp:Label ID="TextBox1" runat="server" Text='<%# Bind("pro_id") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("pro_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="pro_name" SortExpression="pro_name">
                <EditItemTemplate>
                    <asp:Label ID="TextBox2" runat="server" Text='<%# Bind("pro_name") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("pro_name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="pro_image" SortExpression="pro_image">
                <EditItemTemplate>
                    <asp:Image ID="Label4" runat="server" ImageUrl='<%# Bind("pro_image") %>'></asp:Image>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Label4" runat="server" ImageUrl='<%# Bind("pro_image") %>'></asp:Image>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="quantity" SortExpression="quantity">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("quantity") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("quantity") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="pro_price" SortExpression="pro_price">
                <EditItemTemplate>
                    <asp:Label ID="TextBox5" runat="server" Text='<%# Bind("pro_price") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("pro_price") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:Button ID="Button2" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:Button ID="Button3" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Button ID="Button4" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:myDb %>" DeleteCommand="DELETE FROM [Cart] WHERE [c_id] = @c_id" InsertCommand="INSERT INTO [Cart] ([pro_id], [pro_name], [pro_image], [quantity], [pro_price]) VALUES (@pro_id, @pro_name, @pro_image, @quantity, @pro_price)" ProviderName="<%$ ConnectionStrings:myDb.ProviderName %>" SelectCommand="SELECT * FROM [Cart]" UpdateCommand="UPDATE [Cart] SET [pro_id] = @pro_id, [pro_name] = @pro_name, [pro_image] = @pro_image, [quantity] = @quantity, [pro_price] = @pro_price WHERE [c_id] = @c_id">
        <DeleteParameters>
            <asp:Parameter Name="c_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="pro_id" Type="Int32" />
            <asp:Parameter Name="pro_name" Type="String" />
            <asp:Parameter Name="pro_image" Type="String" />
            <asp:Parameter Name="quantity" Type="Int32" />
            <asp:Parameter Name="pro_price" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="pro_id" Type="Int32" />
            <asp:Parameter Name="pro_name" Type="String" />
            <asp:Parameter Name="pro_image" Type="String" />
            <asp:Parameter Name="quantity" Type="Int32" />
            <asp:Parameter Name="pro_price" Type="Int32" />
            <asp:Parameter Name="c_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
</asp:Content>
