<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MasterPageDemo.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="StyleSheet2.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
		<br><br>
        <center>
			<table width="600" bgcolor="#66CCCC" align="center">
				<tr align="center">
					<td colspan="2" align="center">
						<h2 style="font-size: 30px;font-weight: bold;text-decoration: underline;">
                            <asp:Label ID="lblError" runat="server"></asp:Label>
                        </h2>
                        <h2 style="font-size: 30px;font-weight: bold;text-decoration: underline;">Login</h2>
					</td>
					<td colspan="2">
						<h2 style="font-size: 20px;">&nbsp;</h2>
                        <h2 style="font-size: 20px;"><a id='register' href="Register.aspx" >Or Register yourself here!</a></h2>
					</td>
				</tr>
				<tr>
					<td align="right">
						<b style="font-weight: bold;">Your Email:  </b>
					</td>
					<td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
						<br />
					</td>
				</tr>
				<tr>
					<td align="right">
						<b style="font-weight: bold;">Your Password:</b>
					</td>
					<td>
						<asp:TextBox ID="txtPassword" runat="server"></asp:TextBox><br />
					</td>
				</tr>
				<tr align="center">
					<td colspan="2">
                        <asp:Button Text="Log me in!" ID="btnLogin" runat="server" CssClass="c_login" OnClick="btnLogin_Click" />
						<br />
					</td>
				</tr>
				<tr align="center">
					<td colspan="2" align="center">
						<h2 style="font-size: 20px;"><a id='forgot_pass' href="forgot_pass.php" >Forgot Password?</a></h2>
					</td>
				</tr>
			</table>

        </center>

			
			<br /><br />
		
       </div>
</asp:Content>
