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
            string sel = "SELECT dbo.product.product_name, dbo.product.product_image, dbo.cart.quantity, dbo.cart.subtotal, dbo.cart.cart_id FROM dbo.cart INNER JOIN dbo.product ON dbo.cart.product_id = dbo.product.product_id where dbo.cart.user_id ='" + regid + "'and dbo.cart.cart_status = 1";
            DataSet ds = ob.fn_Adapter_DataSet(sel);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            grid_bind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);

            TextBox txtQuantity = (TextBox)GridView1.Rows[i].Cells[3].Controls[0];
            

            string priceQ = "SELECT dbo.product.price FROM dbo.cart INNER JOIN dbo.product ON dbo.cart.product_id = dbo.product.product_id WHERE dbo.cart.cart_id = " + id;
            string price = ob.fn_ExeScalar(priceQ);
            int txtAmount = Convert.ToInt32(txtQuantity.Text) * Convert.ToInt32(price);


            int user_id = Convert.ToInt32(Session["regid"]);
            string update = "update cart set quantity = '" +txtQuantity.Text+ "',subtotal = '"+txtAmount+ "' where cart_id =   " +id+ "and user_id = " +user_id;
            int j = ob.fn_ExecuteNonQuery(update);
            if(j == 1)
            {
                GridView1.EditIndex = -1;
                grid_bind();
            }
            else
            {
                Label1.Text = "Error Inserting";
            }

            

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            grid_bind();
        }

       

        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "delete from cart where cart_id = " + getid;
            int j = ob.fn_ExecuteNonQuery(del);
            if (j == 1)
            {
                Label1.Text = "Product Reomoved from cart";
            }
            grid_bind();

        }
    }
}