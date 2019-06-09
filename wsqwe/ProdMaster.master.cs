using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class ProdMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Lbname.Visible = false;
            alogout.Visible = false;
            
        }
        else
        {
            Lbname.Text = Session["UserName"].ToString();
            alogin.Visible = false;
            aregist.Visible = false;
            alogout.Visible = true;
        }
    }
}
