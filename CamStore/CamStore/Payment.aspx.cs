using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CamStore
{
    public partial class Payment : System.Web.UI.Page
    {
        ConClass ob = new ConClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string s = "select count(acc_id) from account where acc_num = " + TextBox1.Text;
            string c = ob.fn_ExeScalar(s);
            int cnt = Convert.ToInt32(c);
            if (cnt != 1)
            {
                int userid = Convert.ToInt32(Session["regid"]);
                string type = DropDownList1.SelectedItem.Text;
                string ins = "insert into account values(" + userid + ",'" + type + "'," + TextBox1.Text + ",'" + TextBox2.Text + "')";
                int i = ob.fn_ExecuteNonQuery(ins);
                if (i == 1)
                {
                    Label1.Text = "Account Added";

                }
            }
            else
            {
                Label1.Text = "Account already exists";
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            string s = "select count(acc_id) from account where acc_num = " + TextBox1.Text;
            string c = ob.fn_ExeScalar(s);
            int cnt = Convert.ToInt32(c);
            if (cnt == 1)
            {
                Label3.Text = "Account already exists";
            }

        }
    }
}