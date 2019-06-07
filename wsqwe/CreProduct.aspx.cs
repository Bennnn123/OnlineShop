using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CreProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnProdSend_Click(object sender, EventArgs e)
    {
        Product pd = new Product()
        {
            Name = txtProdName.Text,
            Price = Convert.ToInt32(txtProdPrice.Text),
            Amount = Convert.ToInt32(txtProdAmount.Text),
        };

        if (FU1.HasFile)
        {
            string fileName = DateTime.Now.ToString("yyyyMMdd-hhmmss") + ".jpg";

            //1
            pd.ImageFileName = fileName;
            //2
            FU1.SaveAs(Server.MapPath("Upload/" + fileName));

        }

        ProductHandler pdh = new ProductHandler();

        pdh.AddToProducts(pd);

        this.Image1.ImageUrl = "~/Upload/" + FU1.FileName;
    }
}