﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBBilling
{
    public partial class StateMangementAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Session["NumberOne"] = txtNumber1.Text;
            Session["NumberTwo"] = txtNumber2.Text;
            Response.Redirect("StateMangementDisplay.aspx");
        }
    }
}