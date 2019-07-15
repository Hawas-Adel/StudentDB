using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentDB
{
	public partial class Report : System.Web.UI.Page
	{
		public int year_grads_count;
		public int total_grads_count;
		public float ratio;
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				string GY = Request.QueryString["Year"];

				Student_DBEntities S = new Student_DBEntities();
				var GYL = S.Students.GroupBy(x => x.Graduation_Year);
				foreach(var i in GYL)
				{
					Grad_Year_DDL.Items.Add(i.Key.ToString());
				}
				if(GY!=null)
				{
					Grad_Year_DDL.ClearSelection();
					Grad_Year_DDL.Items.FindByText(GY).Selected = true;
				}
				else
				{
					Grad_Year_DDL.ClearSelection();
					Grad_Year_DDL.Items.FindByText(GYL.First().Key.ToString()).Selected = true;
				}
				int Grad_year = Convert.ToInt32(Grad_Year_DDL.SelectedItem.Text);
				year_grads_count = S.Students.ToList().Where(x => x.Graduation_Year == Grad_year).Count();
				total_grads_count = S.Students.ToList().Count();
				ratio = ((float)year_grads_count / (float)total_grads_count) * 100;
			}
		}

		protected void Grad_Year_DDL_TextChanged(object sender, EventArgs e)
		{
			Response.Redirect("Report?Year=" + Grad_Year_DDL.SelectedItem.Text);
		}
	}
}