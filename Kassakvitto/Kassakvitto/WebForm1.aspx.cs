using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Kassakvitto
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ReceiptButton_Click(object sender, EventArgs e)
        {
            if (IsValid) {

                try
                {
                    Model.Reciept rec = new Model.Reciept();

                    rec.Calculate(int.Parse(SumTextBox.Text));

                    RecieptPanel.Visible = true;
                    
                    SubLiteral.Text = String.Format(SubLiteral.Text, rec.Subtotal);

                    DiscountLiteral.Text = String.Format(DiscountLiteral.Text, rec.DiscountRate);

                    MoneyOffLiteral.Text = String.Format(MoneyOffLiteral.Text, rec.MoneyOff);

                    MoneyDueLiteral.Text = String.Format(MoneyDueLiteral.Text, rec.Subtotal - rec.MoneyOff);

                         //double Paymentdue = Subtotal - MoneyOff;

                    //Subplaceholder.Visible = true;
                    //Recieptlabel.Text = string.Format("Ellen nu \n Telefon: 0708-12345 \n");

                }
                catch (Exception)
                {
                    
                    throw;
                }
            }
        }
    }
}