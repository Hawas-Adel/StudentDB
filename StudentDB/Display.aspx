<%@ Page Title="Display" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Display.aspx.cs" Inherits="StudentDB.Display" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<div id="Spacer" runat="server" style="height: 30px"></div>

	<div id="Search_div" runat="server">
		<asp:TextBox ID="Search_BOX" CssClass="input-sm" runat="server" placeholder="بحث" />
		<asp:DropDownList ID="SearchTypeDDL" CssClass="input-sm" runat="server">
			<asp:ListItem Text="الاسم" Value="0"></asp:ListItem>
			<asp:ListItem Text="التلفون" Value="1"></asp:ListItem>
			<asp:ListItem Text="البريد" Value="2"></asp:ListItem>
			<asp:ListItem Text="الدورات التدريبيه" Value="3"></asp:ListItem>
			<asp:ListItem Text="الشعبه" Value="4"></asp:ListItem>
			<asp:ListItem Text="التقدير" Value="5"></asp:ListItem>
			<asp:ListItem Text="الوظيفه" Value="6"></asp:ListItem>
			<asp:ListItem Text="سنة التخرج" Value="7"></asp:ListItem>
			<asp:ListItem Text="الدرجة العلمية" Value="8"></asp:ListItem>
		</asp:DropDownList>
		<asp:Button ID="Search_BTN" Text="بحث" class="btn btn-primary input-sm" runat="server" OnClick="Search_BTN_Click" />
		<asp:Button Style="float:left;" ID="ADD_BTN" Text="إضافه" class="btn btn-primary input-sm" runat="server" OnClick="ADD_BTN_Click" />
	</div>

	<div id="Div1" runat="server" style="height: 30px"></div>

	<div id="Table_div" runat="server">
		<table id="students" align="right" class="table table-bordered table-striped table-hover">
			<thead>
				<tr>
					<th style="width: 15px;"></th>
					<th>الاسم</th>
					<th>التلفون</th>
					<th>البريد</th>
					<th>الدورات التدريبيه</th>
					<th>الشعبه</th>
					<th>التقدير</th>
					<th>الوظيفه</th>
					<th>سنة التخرج</th>
					<th>الدرجة العلمية</th>
					<th style="width: 15px;"></th>
				</tr>
			</thead>
			<tbody>
				<%foreach (var S in Students_list)
				{ %>
				<tr>
					<td><a class = 'glyphicon glyphicon-pencil' href= "Details?ID=<%:S.Id%>"></a></td>
					<td><%:S.Name%></td>
					<td><%:S.Phone%></td>
					<td><%:S.Email%></td>
					<td><%:S.Courses%></td>
					<td><%:S.division%></td>
					<td><%:S.Score%></td>
					<td><%:S.Job%></td>
					<td><%:S.Graduation_Year%></td>
					<td><%:S.Degree%></td>
					<td><a class = 'glyphicon glyphicon-remove' href= "Display?RemoveID=<%:S.Id%>"></a></td>
				</tr>
				<%} %>
			</tbody>
		</table>
	</div>
</asp:Content>
