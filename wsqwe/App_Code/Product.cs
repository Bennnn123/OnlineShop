using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;

public class Product
{
    public string Name { get; set; }
    public int Price { get; set; }
    public int Amount { get; set; }
    public string ImageFileName { get; set; }
}

public class ProductHandler
{
    private string SourcesPath;
    private string ssql;

    public ProductHandler()
    {
        SourcesPath = WebConfigurationManager.ConnectionStrings["CaseDBConnectionString1"].ConnectionString;
    }

    public List<Product> GetCasePath()
    {
        SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Products", this.SourcesPath);

        DataTable dt = new DataTable();

        sda.Fill(dt);

        var query = from row in dt.AsEnumerable()
                    select new Product()
                    {
                        Name = row["Name"].ToString(),
                        Price = (int)row["Price"],
                        Amount = (int)row["Amount"],
                        ImageFileName = row["ImageFileName"].ToString()
                    };

        return query.ToList();
    }

    public void AddToProducts(string ProdName, int Price, int Amount)
    {
        ssql = "insert into Products(Name,Price,Amount) values(@prodname,@price,@amount)";

        SqlDataAdapter sda = new SqlDataAdapter(ssql, this.SourcesPath);
        DataTable dt = new DataTable();

        sda.SelectCommand.Parameters.AddWithValue("prodname", ProdName);
        sda.SelectCommand.Parameters.AddWithValue("price", Price);
        sda.SelectCommand.Parameters.AddWithValue("amount", Amount);

        sda.Fill(dt);
        sda.Update(dt);
    }

    public void AddToProducts(Product p)
    {
        using (SqlConnection cn = new SqlConnection(this.SourcesPath))
        {
            SqlCommand cmd = new SqlCommand(
                "insert into Products values(@name , @price , @amount , @imgUrl)",
                cn);

            cmd.Parameters.AddWithValue("@name", p.Name);
            cmd.Parameters.AddWithValue("@price", p.Price);
            cmd.Parameters.AddWithValue("@amount", p.Amount);
            cmd.Parameters.AddWithValue("@imgUrl", p.ImageFileName);
            //cmd.Parameters.AddWithValue("@imgUrl", DBNull.Value);

            cn.Open();
            cmd.ExecuteNonQuery();
        }
    }

    public void AddToProducts(string ProdName, int Price, int Amount, string ProdImg)
    {
        ssql = "insert into Products(Name,Price,Amount,ImageFileName) values(@prodname,@price,@amount,@imgfilename)";

        SqlDataAdapter sda = new SqlDataAdapter(ssql, this.SourcesPath);
        DataTable dt = new DataTable();

        sda.SelectCommand.Parameters.AddWithValue("prodname", ProdName);
        sda.SelectCommand.Parameters.AddWithValue("price", Price);
        sda.SelectCommand.Parameters.AddWithValue("amount", Amount);
        sda.SelectCommand.Parameters.AddWithValue("imgfilename", ProdImg);

        sda.Fill(dt);
        sda.Update(dt);
    }

    public bool CompareProdName(string ProdName)
    {
        ssql = "SELECT* FROM Products WHERE Name=@name";

        SqlDataAdapter sd = new SqlDataAdapter(ssql, this.SourcesPath);

        sd.SelectCommand.Parameters.AddWithValue("@name", ProdName);

        DataTable dtb = new DataTable();

        sd.Fill(dtb);

        return dtb.Rows.Count == 1;


    }

    public void OutputFileFormat(string str, string FileName)
    {
        StreamWriter sw = new StreamWriter(HttpContext.Current.Server.MapPath($"{FileName}"));

        sw.WriteLine(str);

        sw.Close();

        //File.AppendAllText(FileFormat,result);
    }



    public string ProdString(string N, string P, string A, string I)
    {
        return $"產品名稱：{N}，產品價格：{P}元，產品數量：{A}杯，圖片檔名：{I}";
    }

    public string ProdString(string N, string P, string A)
    {
        return $"產品名稱：{N}，產品價格：{P}元，產品數量：{A}杯";
    }

    public void CapBPrice(int ProdPrice, BulletedList buList)
    {
        foreach (Product item in GetCasePath())
        {
            if (int.Parse(item.Price.ToString()) > ProdPrice)
            {
                buList.Items.Add(ProdString(item.Name, item.Price.ToString(), item.Amount.ToString(), item.ImageFileName));
            }
        }
    }


    public void strMsg(string Msg)
    {
        System.Web.HttpContext.Current.Response.Write("<Script language='Javascript'>");
        System.Web.HttpContext.Current.Response.Write($"alert('{Msg}')");
        System.Web.HttpContext.Current.Response.Write("</" + "Script>");
    }


    public void UpdProdInfo(string prod)
    {
        //List<Product> prodList = GetCasePath();
        SqlDataAdapter sda = new SqlDataAdapter("update ", this.SourcesPath);


    }





}