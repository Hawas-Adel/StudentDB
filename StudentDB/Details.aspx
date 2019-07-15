<%@ Page Title="Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="StudentDB.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<div id="Spacer" runat="server" style="height: 30px"></div>

	<div id="Table_div" runat="server">
		<table id="students" align="right" style="width:100%; overflow:auto;" class = "" >
			<tbody>
				<tr>
					<td><asp:Label ID="Label1" class="input-lg" runat="server" Text="الاسم"></asp:Label></td>
					<td><asp:TextBox ID="TextBoxName" CssClass="input-lg" runat="server" /></td>
				</tr>
				<tr>
					<td><asp:Label ID="Label2" class="input-lg" runat="server" Text="التلفون"></asp:Label></td>
					<td><asp:TextBox ID="TextBoxPhone" CssClass="input-lg" runat="server" /></td>
				</tr>
				<tr>
					<td><asp:Label ID="Label3" class="input-lg" runat="server" Text="البريد"></asp:Label></td>
					<td><asp:TextBox ID="TextBoxEmail" CssClass="input-lg" runat="server" /></td>
				</tr>
				<tr>
					<td><asp:Label ID="Label4" class="input-lg" runat="server" Text="الدورات التدريبيه"></asp:Label></td>
					<td><asp:TextBox ID="TextBoxCourses" CssClass="input-lg" runat="server"  /></td>
				</tr>
				<tr>
					<td><asp:Label ID="Label5" class="input-lg" runat="server" Text="الشعبه"></asp:Label></td>
					<td><asp:TextBox ID="TextBoxDivision" CssClass="input-lg" runat="server" /></td>
				</tr>
				<tr>
					<td><asp:Label ID="Label6" class="input-lg" runat="server" Text="التقدير"></asp:Label></td>
					<td><asp:TextBox ID="TextBoxScore" CssClass="input-lg" runat="server" /></td>
				</tr>
				<tr>
					<td><asp:Label ID="Label7" class="input-lg" runat="server" Text="الوظيفه"></asp:Label></td>
					<td><asp:TextBox ID="TextBoxJob" CssClass="input-lg" runat="server" /></td>
				</tr>
				<tr>
					<td><asp:Label ID="Label8" class="input-lg" runat="server" Text="سنة التخرج"></asp:Label></td>
					<td><asp:TextBox ID="TextBoxGradYear" CssClass="input-lg" runat="server" /></td>
				</tr>
				<tr>
					<td><asp:Label ID="Label9" class="input-lg" runat="server" Text="الدرجة العلمية"></asp:Label></td>
					<td><asp:TextBox ID="TextBoxDegree" CssClass="input-lg" runat="server" /></td>
				</tr>
			</tbody>
		</table>
	</div>
	<%if (edit)
   {%>
	<div id="Div9" runat="server">
		<asp:Button ID="EDIT_BTN" Text="حفظ" class="btn btn-primary" runat="server" OnClick="EDIT_BTN_Click" />
		&nbsp;&nbsp;
		<a class="btn btn-default" runat="server" href="~/Display">إلغاء</a>
	</div>
	<%}
   else
   {%>
	<div id="Div10" runat="server">
		<asp:Button ID="ADD_BTN" Text="إضافه" class="btn btn-primary input-lg" runat="server" OnClick="ADD_BTN_Click" />
	</div>
	<%}%>
</asp:Content>
