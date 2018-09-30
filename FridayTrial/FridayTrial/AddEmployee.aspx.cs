using System;

namespace FridayTrial
{
    public partial class AddEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (DataClasses1DataContext dbContext = new DataClasses1DataContext())
            {
                int id = Convert.ToInt32(TextBox1.Text.ToString());

                int? building_id = (string.IsNullOrEmpty(TextBox2.Text) ? (int?)null : Convert.ToInt32(TextBox2.Text));
                //if (TextBox2.Text != "")

                //{ building_id = Convert.ToInt32(TextBox2.Text.ToString()); }
                //else
                //    building_id = null;
                Console.WriteLine(building_id);
                string firstname = TextBox3.Text;
                string lastname = TextBox4.Text;
                int salary = Convert.ToInt32(TextBox5.Text.ToString());
                dbContext.sp_EmployeeInsert(id, building_id, firstname, lastname, salary);
                dbContext.SubmitChanges();
                Response.Redirect("default.aspx");

            }
        }
    }
}