using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace CamStore
{
    public partial class ViewBill : System.Web.UI.Page
    {
        ConClass ob = new ConClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            string sel = "SELECT dbo.usertb.username, dbo.usertb.phone, dbo.product.product_name, dbo.product.price, dbo.orderr.order_subtotal, dbo.orderr.order_quantity, dbo.bill.user_id, dbo.bill.grand_total " +
             "FROM dbo.product " +
             "INNER JOIN dbo.orderr ON dbo.product.product_id = dbo.orderr.product_id " +
             "INNER JOIN dbo.usertb ON dbo.orderr.user_id = dbo.usertb.user_id " +
             "INNER JOIN dbo.bill ON dbo.usertb.user_id = dbo.bill.user_id " +
             "WHERE dbo.orderr.user_id = " + Session["regid"] +
             "AND dbo.orderr.order_status = 'order' AND dbo.bill.bill_id = (SELECT MAX(bill_id) FROM dbo.bill WHERE user_id = " + Session["regid"] + ")";
            DataSet ds = ob.fn_Adapter_DataSet(sel);
            GridView1.DataSource = ds;
            GridView1.DataBind();

            string sel2 = "SELECT dbo.usertb.username, dbo.usertb.phone, dbo.orderr.order_date, dbo.bill.grand_total, dbo.orderr.order_subtotal " +
             "FROM dbo.product " +
             "INNER JOIN dbo.orderr ON dbo.product.product_id = dbo.orderr.product_id " +
             "INNER JOIN dbo.usertb ON dbo.orderr.user_id = dbo.usertb.user_id " +
             "INNER JOIN dbo.bill ON dbo.usertb.user_id = dbo.bill.user_id " +
             "WHERE dbo.orderr.user_id = " + Session["regid"];

            SqlDataReader dr = ob.fn_exereader(sel2);
            while (dr.Read())
            {
                Label1.Text = dr["username"].ToString();
                Label2.Text = dr["phone"].ToString();
                Label3.Text = dr["order_date"].ToString();
                Label4.Text = dr["grand_total"].ToString();
                Session["gtotal"] = dr["grand_total"].ToString();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");

        }
    }
}