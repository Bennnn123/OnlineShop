using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MemberHandler mh = new MemberHandler();

        if (Session["UserName"] == null)
        {
            mh.strMsg("請先登入會員，再進行操作!");
            Response.Redirect("~/Login.aspx");
        }

    }

    protected void btnDel_Click(object sender, EventArgs e)
    {
        Button b = sender as Button;

        int id = int.Parse(b.CommandName);

        MemberHandler mh = new MemberHandler();

        mh.DeleteMember(id);

        Repeater1.DataBind();
    }
}