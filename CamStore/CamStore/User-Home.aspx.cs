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
    public partial class User_Home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"server=LAPTOP-QK9QR22V\SQLEXPRESS;database=CamStore;Integrated security = true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grid_bind();
            }
        }

        public void grid_bind()
        {
            string s = "select category_name,category_photo from category";

            SqlDataAdapter da = new SqlDataAdapter(s, con);

            DataSet ds = new DataSet();

            da.Fill(ds);

            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
    }
}