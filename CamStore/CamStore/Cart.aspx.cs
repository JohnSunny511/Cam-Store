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
    public partial class Cart : System.Web.UI.Page
    {
        ConClass ob = new ConClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grid_bind();
            }
        }

        public void grid_bind()
        {
            int regid = Convert.ToInt32(Session["Reg_id"]);
            string sel = "SELECT dbo.product.product_name, dbo.product.product_image, dbo.cart.quantity, dbo.cart.subtotal, dbo.cart_id FROM dbo.cart INNER JOIN dbo.product ON dbo.cart.product_id = dbo.product.product_id where dbo.cart.user_id ='" + regid + "'and dbo.cart.cart_status = 1";
            DataSet ds = ob.fn_Adapter_DataSet(sel);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
    }
}