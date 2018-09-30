using System;

namespace FridayTrial
{
    public partial class AddBuilding : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            using (DataClasses1DataContext dbContext = new DataClasses1DataContext())
            {
                int id = Convert.ToInt32(TextBox1.Text.ToString());

                string name = TextBox2.Text;
                string address = TextBox3.Text;

                dbContext.sp_BuildingInsert(id, name, address);
                dbContext.SubmitChanges();
                Response.Redirect("ViewBuildings.aspx");
            }
        }
    }
}