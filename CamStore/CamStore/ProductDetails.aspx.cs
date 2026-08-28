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
    public partial class ProductDetails : System.Web.UI.Page
    {
       
        ConClass ob = new ConClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind();
            }

        }

        public void bind()
        {
            int id = Convert.ToInt32(Session["pro"]);
            string s = "select * from product where product_id =" +id;
            DataSet ds = ob.fn_Adapter_DataSet(s);
            if (ds.Tables[0].Rows.Count > 0)
            {
                DataRow row = ds.Tables[0].Rows[0];

                Image1.ImageUrl = row["product_image"].ToString();
                Label5.Text = row["product_name"].ToString();
                Label6.Text = row["price"].ToString();
                Label7.Text = row["product_description"].ToString();

                RangeValidator1.MaximumValue = row["stock"].ToString();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int i = Convert.ToInt32(TextBox1.Text) + 1;
            TextBox1.Text = i.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int i = Convert.ToInt32(TextBox1.Text);
            if(i > 0)
            {
                i = Convert.ToInt32(TextBox1.Text) - 1;
                TextBox1.Text = i.ToString();
            }
        }
    }

}