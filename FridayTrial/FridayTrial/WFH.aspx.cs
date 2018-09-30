using System;
using System.Linq;
namespace FridayTrial
{
    public partial class WFH : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            //int? id = null;
            DataClasses1DataContext db = new DataClasses1DataContext();

            //DataClasses1DataContext db = new FridayTrial.DataClasses1DataContext();
            var query = (from emp in db.Employees
                         where emp.Building_id == null
                         select emp);
            GridView1.DataSource = query;
            GridView1.DataBind();

            //db.SubmitChanges();

        }
    }
}