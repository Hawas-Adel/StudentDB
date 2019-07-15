using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentDB
{
	public partial class Details : System.Web.UI.Page
	{
		public bool edit = false;

		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				string ID_S = Request.QueryString["ID"];
				if (ID_S != null)
				{
					edit = true;
					int ID = Convert.ToInt32(ID_S);
					Student_DBEntities S = new Student_DBEntities();
					var Student = S.Students.FirstOrDefault(x => x.Id == ID);
					TextBoxName.Text = Student.Name;
					TextBoxPhone.Text = Student.Phone;
					TextBoxEmail.Text = Student.Email;
					TextBoxCourses.Text = Student.Courses;
					TextBoxDivision.Text = Student.division;
					TextBoxScore.Text = Student.Score;
					TextBoxJob.Text = Student.Job;
					TextBoxGradYear.Text = Student.Graduation_Year.ToString();
					TextBoxDegree.Text = Student.Degree;
				}
			}
		}

		protected void ADD_BTN_Click(object sender, EventArgs e)
		{
			Student_DBEntities S = new Student_DBEntities();
			Student student = new Student();
			student.Name = TextBoxName.Text;
			student.Phone = TextBoxPhone.Text;
			student.Email = TextBoxEmail.Text;
			student.Courses = TextBoxCourses.Text;
			student.division = TextBoxDivision.Text;
			student.Score = TextBoxScore.Text;
			student.Job = TextBoxJob.Text;
			if (TextBoxGradYear.Text != "")
			{
				student.Graduation_Year = Convert.ToInt32(TextBoxGradYear.Text);
			}
			else
			{
				student.Graduation_Year = 0;
			}
			student.Degree = TextBoxDegree.Text;
			S.Students.Add(student);
			S.SaveChanges();
			Response.Redirect("Display");
		}

		protected void EDIT_BTN_Click(object sender, EventArgs e)
		{
			Student_DBEntities S = new Student_DBEntities();
			int ID = Convert.ToInt32(Request.QueryString["ID"]);
			Student student = S.Students.FirstOrDefault(x => x.Id == ID);
			student.Name = TextBoxName.Text;
			student.Phone = TextBoxPhone.Text;
			student.Email = TextBoxEmail.Text;
			student.Courses = TextBoxCourses.Text;
			student.division = TextBoxDivision.Text;
			student.Score = TextBoxScore.Text;
			student.Job = TextBoxJob.Text;
			student.Graduation_Year = Convert.ToInt32(TextBoxGradYear.Text);
			student.Degree = TextBoxDegree.Text;
			S.SaveChanges();
			Response.Redirect("Display");
		}

	}
}