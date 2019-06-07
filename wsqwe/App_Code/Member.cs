using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;



public class Member
{
    public string UserName { get; set; }
    public string PassWord { get; set; }
}


public class MemberHandler
{

    private string SourcesPath;
    private string sql;
    public MemberHandler()
    {
        SourcesPath = WebConfigurationManager.ConnectionStrings["CaseDBConnectionString1"].ConnectionString;
    }

    //public void SaveToMember(Member m)
    //{
    //    File.AppendAllText(this.FilePath, $"{m.ID},{m.PWD}\r\n");
    //}

    public List<Member> GetCasePath()
    {
        SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Members", this.SourcesPath);

        DataTable dt = new DataTable();

        sda.Fill(dt);

        var query = from row in dt.AsEnumerable()
                    select new Member() { UserName = row["UserName"].ToString(), PassWord = row["PassWord"].ToString() };

        return query.ToList();
    }

    public void strMsg(string Msg)
    {
        System.Web.HttpContext.Current.Response.Write("<Script language='Javascript'>");
        System.Web.HttpContext.Current.Response.Write($"alert('{Msg}')");
        System.Web.HttpContext.Current.Response.Write("</" + "Script>");
    }

    //public List<Member> GetCaseFilePath()
    //{
    //    string[] mc = File.ReadAllLines(HttpContext.Current.Server.MapPath("~/member.txt"));

    //    List<Member> memberList = new List<Member>();

    //    var query = from m in mc
    //                select new Member() { ID = m.Split(',')[0], PWD = m.Split(',')[1] };


    //    return query.ToList();

    //}

    public bool CompareUserName(string Username)
    {
        //List<Member> loginid = GetCasePath();
        //Member client = loginid.SingleOrDefault(m => m.ID == i);
        //return client != null;

        SqlDataAdapter sd = new SqlDataAdapter("SELECT * FROM Members WHERE UserName=@username", this.SourcesPath);

        sd.SelectCommand.Parameters.AddWithValue("@username", Username);

        DataTable dtb = new DataTable();

        sd.Fill(dtb);

        return dtb.Rows.Count == 1;


    }


    public bool ComparePassWord(string Password)
    {
        SqlDataAdapter sd = new SqlDataAdapter("SELECT * FROM Members WHERE PassWord=@password", this.SourcesPath);

        sd.SelectCommand.Parameters.AddWithValue("@password", Password);

        DataTable dtb = new DataTable();

        sd.Fill(dtb);

        return dtb.Rows.Count == 1;
    }

    public void AddToMembers(string UserName, string PassWord)
    {
        sql = "insert into Members(UserName,PassWord) values(@UN,@PW)";

        SqlDataAdapter da = new SqlDataAdapter(sql, this.SourcesPath);
        DataTable dt = new DataTable();

        da.SelectCommand.Parameters.AddWithValue("@UN", UserName);
        da.SelectCommand.Parameters.AddWithValue("@PW", PassWord);

        da.Fill(dt);
        da.Update(dt);

    }

}