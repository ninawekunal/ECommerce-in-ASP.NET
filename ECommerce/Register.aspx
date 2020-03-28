<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MasterPageDemo.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="StyleSheet3.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
					 	
					 		<table width="600" align="center">
					 			<tr align="center">
					 				<td colspan="2"><h2 style="font-size: 25px; font-weight: bold;text-decoration: underline;">
                                        <asp:Label ID="lblError" runat="server"></asp:Label>
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx" Visible="False">Login Page:</asp:HyperLink>
                                        </h2>
                                        <h2 style="font-size: 25px; font-weight: bold;text-decoration: underline;">Create an account</h2></td>
					 			</tr>
					 			<tr>
					 				<td align="right">Your Name:</td>
					 				<td>
					 					&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
					 				</td>
					 			</tr>
					 			<tr>
					 				<td align="right">Your Email:</td>
					 				<td>
					 					&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
					 				</td>
					 			</tr>
					 			<tr>
					 				<td align="right">Your Password:</td>
					 				<td>
					 					&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
					 				</td>
					 			</tr>
					 			<tr>
					 				<td align="right">Your Country:</td>
					 				<td>
					 					&nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                                            <asp:ListItem>India</asp:ListItem>
                                            <asp:ListItem>USA</asp:ListItem>
                                            <asp:ListItem>Germany</asp:ListItem>
                                        </asp:DropDownList>
					 				</td>
					 			</tr>
					 			<tr>
					 				<td align="right">Your City:</td>
					 				<td>
                                         
					 					&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
					 				</td>
					 			</tr>
					 			<tr>
					 				<td align="right">Your Contact:</td>
					 				<td>
					 					&nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
					 				</td>
					 			</tr>
					 			<tr>
					 				<td align="right">Your Address:</td>
					 				<td>
					 					&nbsp;<asp:TextBox ID="TextBox6" runat="server" Height="52px" Width="146px"></asp:TextBox>
					 				</td>
					 			</tr>
					 			<tr>
					 				<td align="right">Your Image:</td>
					 				<td>
					 					&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
					 				</td>
					 			</tr>
					 			<tr align="center">
					 				<td colspan="8">
                                        <asp:Button  ID="Button1" runat="server" Font-Bold="True" Height="41px" Text="Register Me!" Width="93px" OnClick="Button1_Click" style="margin-left: 0px" />
                                    </td>
					 			</tr>
					 		</table>
					 	
					 </div>
</asp:Content>
