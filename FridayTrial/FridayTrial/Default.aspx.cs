using System;
using System.Web.UI;
using System.Linq;


namespace FridayTrial
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!this.IsPostBack)
            //{
            //    DataClasses1DataContext dbContext = new DataClasses1DataContext();
            //    GridView1.DataSource = from employee in dbContext.Employees
            //                           select employee;
            //    GridView1.DataBind();
            //}

            DataClasses1DataContext dbContext = new DataClasses1DataContext();

            var Max = (from employee in dbContext.Employees

                       select employee).Max(x => x.Salary).ToString();
            TextBox2.Text = Max.ToString();

            var Min = (from employee in dbContext.Employees
                       select employee).Min(x => x.Salary);
            TextBox3.Text = Min.ToString();

            var sum = (from employee in dbContext.Employees
                       select employee).Sum(x => x.Salary);
            TextBox1.Text = sum.ToString();

            var average = (from employee in dbContext.Employees
                           select employee).Average(x => x.Salary);
            TextBox4.Text = average.ToString();

        }


        //public IQueryable<Employee> EmployeeGrid_getData([Control] ID? displayId)
        //{

        //    DataClasses1DataContext dbContext = new DataClasses1DataContext();
        //    var query = from employee in dbContext.Employees
        //                select employee;

        //    if (displayId !=null)
        //    {
        //        query = query.Where(e => e.Building_id = displayId);

        //    }
        //        return query;
        //}
    }
}