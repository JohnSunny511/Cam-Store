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
    public partial class admin_edit_category : System.Web.UI.Page
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
            string s = "select category_id,category_name,category_description,category_photo,category_status from category";

            DataSet ds = ob.fn_Adapter_DataSet(s);

            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

       
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int category_id = Convert.ToInt32(GridView1.DataKeys[i].Value);

            TextBox txtname = (TextBox)GridView1.Rows[i].Cells[1].Controls[0];
            TextBox txtdesc = (TextBox)GridView1.Rows[i].Cells[2].Controls[0];
            TextBox txtstatus = (TextBox)GridView1.Rows[i].Cells[4].Controls[0];

            FileUpload fu = (FileUpload)GridView1.Rows[i].FindControl("FileUpload1");

            string query;
            if (fu.HasFile)
            {

                string path = "photos/" + fu.FileName;
                fu.SaveAs(Server.MapPath(path));
                query = "update category  set category_name ='" + txtname.Text + "',category_description ='" + txtdesc.Text + "',category_photo ='" + path + "',category_status = '" + txtstatus.Text + "' where category_id =  " + category_id;
            }
            else
            {
                query = query = "update category  set category_name ='" + txtname.Text + "',category_description ='" + txtdesc.Text + "',category_status = '" + txtstatus.Text + "' where category_id =  " + category_id;
            }
           

            ob.fn_ExecuteNonQuery(query);

            GridView1.EditIndex = -1;
            grid_bind();
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
    }
}