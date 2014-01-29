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

                }
                catch (Exception)
                {
                    
                    throw;
                }
            }
        }
    }
}