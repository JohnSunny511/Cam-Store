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
    public partial class Feedback : System.Web.UI.Page
    {
        ConClass ob = new ConClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "Select product_id,product_name from product";
                DataSet ds = ob.fn_Adapter_DataSet(s);
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "product_name";
                DropDownList1.DataValueField = "product_id";
                DropDownList1.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int uid = Convert.ToInt32(Session["regid"]);
            string ins = "insert into feedback (user_id,product_id,feedback_msg,reply_msg,feedback_status,feedback_date) values("+uid+","+DropDownList1.SelectedItem.Value+",'"+TextBox1.Text+ "','not_replyed','active',GETDATE())";
            int i = ob.fn_ExecuteNonQuery(ins);
            if(i == 1)
            {
                Label1.Text = "Feedback Submited";

            }
        }
    }
}