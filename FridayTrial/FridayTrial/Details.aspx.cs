using System;

namespace FridayTrial
{
    public partial class Details1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (DataClasses1DataContext dbContext = new DataClasses1DataContext())
                {


                    int building_id = Convert.ToInt32((Request.QueryString["ID"].ToString()));

                    Console.WriteLine(building_id);
                    GridView2.DataSource = dbContext.sp_GetEmployeeDetailsByBuildingID(building_id);
                    GridView2.DataBind();

                }


            }




        }
    }
}
