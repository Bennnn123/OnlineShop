using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void UpdateButton_Click(object sender, EventArgs e)
    {
        MemberHandler mh = new MemberHandler();

        mh.strMsg("修改完成");
        Response.Redirect("~/MemberList.aspx");
    }

    protected void UpdateCancelButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/MemberList.aspx");
    }

    protected void UpdateButton_Click1(object sender, EventArgs e)
    {

    }
}