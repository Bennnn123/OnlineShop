using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        //接textBox
        string id = txtUserName.Text;
        string pw = txtPassWord.Text;

        MemberHandler mber = new MemberHandler();

        List<Member> berList = mber.GetCasePath();

        if (mber.CompareUserName(id) == false && mber.ComparePassWord(pw) == false)
        {
            mber.strMsg("該用戶尚未註冊，請先加入會員再執行此動作!");
            Response.Redirect("~/AddMember.aspx");
        }
        else
        {
            if (mber.CompareUserName(id) == false)
            {
                mber.strMsg("您輸入的帳號有誤，請再次檢查是否輸入正確!");
            }
            else if (mber.ComparePassWord(pw) == false)
            {
                mber.strMsg("您輸入的密碼有誤，請再次檢查是否輸入正確!");
            }
            else
            {
                Response.Redirect("~/Home.aspx");
            }
        }

    }
}