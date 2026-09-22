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
    public partial class ManageUsers : System.Web.UI.Page
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
            string sel = "select * from usertb";
            DataSet ds = ob.fn_Adapter_DataSet(sel);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            grid_bind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            grid_bind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int uid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            RadioButtonList st = (RadioButtonList)GridView1.Rows[e.RowIndex].FindControl("RadioButtonList1");
            string status = st.SelectedValue;

            string upd = "update usertb set user_status='" + status + "' where user_id = " + uid;
            ob.fn_ExecuteNonQuery(upd);
            GridView1.EditIndex = -1;
            grid_bind();
        }
    }
}