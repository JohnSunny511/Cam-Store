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
    public partial class Add_Category : System.Web.UI.Page
    {
        ConClass ob = new ConClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string path = "~/photos/" + FileUpload1.FileName; //path
            FileUpload1.SaveAs(MapPath(path));
            string ins = "insert into category values('" + TextBox1.Text + "','" + TextBox2.Text + "','"+path+"','active')";
            int i = ob.fn_ExecuteNonQuery(ins);
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