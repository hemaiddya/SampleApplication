using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FridayTrial
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Details.aspx?ID=" + ((LinkButton)sender).Text);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WFH.aspx");

        }
    }
}