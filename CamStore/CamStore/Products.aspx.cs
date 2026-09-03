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
    public partial class Products : System.Web.UI.Page
    {
        ConClass ob = new ConClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                data_bind();
            }
        }

        public void data_bind()
        {
            int cat_id = Convert.ToInt32(Session["uid"]);
            string s = "select product_id,product_name,product_image,price,product_description from product where category_id = " + cat_id;
            DataSet ds = ob.fn_Adapter_DataSet(s);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Session["pro_id"] = id;
            Response.Redirect("ProductDetails.aspx");
        }
    }
}