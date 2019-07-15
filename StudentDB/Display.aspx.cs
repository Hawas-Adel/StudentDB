using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentDB
{
	public partial class Display : System.Web.UI.Page
	{
		public IEnumerable<Student> Students_list;

		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				string S_Type = Request.QueryString["S_Type"];
				string Search = Request.QueryString["S"];
				string RemoveID = Request.QueryString["RemoveID"];

				Student_DBEntities S = new Student_DBEntities();

				if (S_Type != null )
				{
					SearchTypeDDL.ClearSelection();
					SearchTypeDDL.Items.FindByText(S_Type).Selected = true;
				}

				if (RemoveID != null)
				{
					int R_ID = Convert.ToInt32(RemoveID);
					Student student = S.Students.FirstOrDefault(x => x.Id == R_ID);
					S.Students.Remove(student);
					S.SaveChanges();
				}

				if (Search==null || Search == "")
				{
					Students_list = S.Students.ToList();
				}
				else
				{
					switch (S_Type)
					{
						case "الاسم":
							Students_list = S.Students.ToList().Where(x => x.Name.Contains(Search));
							break;
						case "التلفون":
							Students_list = S.Students.ToList().Where(x => x.Phone == Search);
							break;
						case "البريد":
							Students_list = S.Students.ToList().Where(x => x.Email.Contains(Search));
							break;
						case "الدورات التدريبيه":
							Students_list = S.Students.ToList().Where(x => x.Courses.Contains(Search));
							break;
						case "الشعبه":
							Students_list = S.Students.ToList().Where(x => x.division.Contains(Search));
							break;
						case "التقدير":
							Students_list = S.Students.ToList().Where(x => x.Score.Contains(Search));
							break;
						case "الوظيفه":
							Students_list = S.Students.ToList().Where(x => x.Job.Contains(Search));
							break;
						case "سنة التخرج":
							Students_list = S.Students.ToList().Where(x => x.Graduation_Year == Convert.ToInt32(Search));
							break;
						case "الدرجة العلمية":
							Students_list = S.Students.ToList().Where(x => x.Degree.Contains(Search));
							break;
					}
				}			
			}
		}

		protected void Search_BTN_Click(object sender, EventArgs e)
		{
			Response.Redirect("Display?S_Type=" + SearchTypeDDL.SelectedItem.Text + "&S=" + Search_BOX.Text + "");
		}

		protected void ADD_BTN_Click(object sender, EventArgs e)
		{
			Response.Redirect("Details");
		}
	}
}