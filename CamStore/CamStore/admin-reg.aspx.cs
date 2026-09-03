using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CamStore
{
    public partial class admin_reg : System.Web.UI.Page
    {
        ConClass ob = new ConClass();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sel = "select max(Reg_id) from login";
            string maxreg = ob.fn_ExeScalar(sel);
            int regid = 0;
            if (maxreg == "")
            {
                regid = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(maxreg);
                regid = newregid + 1;
            }

            string ins = "insert into admin values(" + regid + ",'" + TextBox1.Text + "','" + TextBox2.Text + "')";
            int i = ob.fn_ExecuteNonQuery(ins);
            if (i == 1)
            {
                string inslog = "insert into login values(" + regid + ",'" + TextBox3.Text + "','" + TextBox4.Text + "','admin')";
                int j = ob.fn_ExecuteNonQuery(inslog);
                if (i == 1 && j == 1)
                {
                    Label1.Text = "Succesfully Registerd";
                    Response.Redirect("Login.aspx");

                }
            }
            else
            {
                Label1.Text = "Invalid Entry";

            }
        }
    }
}