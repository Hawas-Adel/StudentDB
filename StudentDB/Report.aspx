<%@ Page Title="Report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="StudentDB.Report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<asp:DropDownList ID="Grad_Year_DDL" CssClass="input-lg" autopostback="True" runat="server" OnTextChanged="Grad_Year_DDL_TextChanged">
	</asp:DropDownList>
	<div id="Table_div" runat="server">
		<table id="students" align="right" style="width:100%; overflow:auto;" class = "" >
			<tbody>
				<tr>
					<td style="width:20%;"><asp:Label ID="Label1" CssClass="input-lg" runat="server" Text="عدد الطلبه"></asp:Label></td>
					<td><asp:Label ID="Label1111" CssClass="input-lg" runat="server" /><%:year_grads_count%></td>
				</tr>
				<tr>
					<td style="width:20%;"><asp:Label ID="Label2" CssClass="input-lg" runat="server" Text=" اجمالي عدد الطلبه"></asp:Label></td>
					<td><asp:Label ID="Label3" CssClass="input-lg" runat="server" /><%:total_grads_count%></td>
				</tr>
				<tr>
					<td style="width:20%;"><asp:Label ID="Label4" CssClass="input-lg" runat="server" Text=" النسبه المؤيه"></asp:Label></td>
					<td><asp:Label ID="Label5" CssClass="input-lg" runat="server" /><%:ratio%>%</td>
				</tr>
			</tbody>
		</table>
	</div>
</asp:Content>
