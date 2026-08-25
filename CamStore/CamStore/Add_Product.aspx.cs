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
    public partial class Add_Product : System.Web.UI.Page
    {
        ConClass con = new ConClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "Select category_id,category_name from category";
                DataSet ds = con.fn_Adapter_DataSet(s);
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "category_name";
                DropDownList1.DataValueField = "category_id";
                DropDownList1.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string path = "~/photos/" + FileUpload1.FileName; //path
            FileUpload1.SaveAs(MapPath(path));
            string ins = "insert into product values('" + TextBox1.Text + "','" + TextBox2.Text + "',"+TextBox3.Text+ ","+TextBox4.Text+","+TextBox5.Text+ ",'" + path + "','active'," + DropDownList1.SelectedValue + ")";
            int i = con.fn_ExecuteNonQuery(ins);
            if (i == 1)
            {
                Label2.Text = "Succesfully Inserted";
            }
            else
            {
                Label2.Text = "Insertion Unscuccesful";

            }

        }
    }
}