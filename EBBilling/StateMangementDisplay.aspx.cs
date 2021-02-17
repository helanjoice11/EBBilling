using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBBilling
{
    public partial class StateMangementDisplay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int Num1 = Convert.ToInt32(Session["NumberOne"]);
            int Num2 = Convert.ToInt32(Session["NumberTwo"]);
            lblAnswer.Text = (Num1 + Num2).ToString();
        }
    }
}