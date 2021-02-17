using System;

namespace EBBilling
{
    public partial class EBBillGenerator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculateBill_Click(object sender, EventArgs e)
        {
            int NoofUnits = Convert.ToInt32(txtNoOfUits.Text);
            lblOutput.Text = "";
            MultiView1.ActiveViewIndex = 1;
            lblName.Text = txtCustomerName.Text;
            lblNoOfUnits.Text = txtNoOfUits.Text;
            lblType.Text = ddlType.SelectedItem.Text;
            int Amount = 0;
            int type = Convert.ToInt32(ddlType.SelectedValue);

            if (NoofUnits > 400)
            {
                int Unit = NoofUnits - 400;
                Amount += type == 2 ? Unit * 5 : Unit * 15;
                NoofUnits = NoofUnits - Unit;
            }
            if (NoofUnits > 300)
            {
                int Unit = NoofUnits - 300;
                Amount += type == 2 ? Unit * 3 : Unit * 10;
                NoofUnits = NoofUnits - Unit;
            }
            if (NoofUnits > 200)
            {
                int Unit = NoofUnits - 200;
                Amount += type == 2 ? Unit * 3 : Unit * 5;
                NoofUnits = NoofUnits - Unit;
            }
            if (NoofUnits > 100)
            {
                int Unit = NoofUnits - 100;
                Amount += type == 2 ? Unit * 3 : Unit * 3;
                NoofUnits = NoofUnits - Unit;
            }
            if (Amount > 0)
            {
                lblOutput.Text = "₹ " + Amount.ToString();
            }
            else
            {
                lblOutput.Text = "No Bills";
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
}