using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CamStore
{
    public partial class Login : System.Web.UI.Page
    {
        ConClass ob = new ConClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "select count(reg_id) from login where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
            string cid = ob.fn_ExeScalar(str);
            int cid1 = Convert.ToInt32(cid);
            if (cid1 == 1)
            {
                string str1 = "select reg_id from login where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
                string regid = ob.fn_ExeScalar(str1);
                Session["regid"] = regid;


                string str2 = "select log_type from login where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
                string logtype = ob.fn_ExeScalar(str2);
                if (logtype == "admin")
                {
                    Response.Redirect("admin-home.aspx");
                }   
                else if (logtype == "user")
                {
                    int uid = Convert.ToInt32(regid);
                    string sel = "select user_status from usertb where user_id=" + uid;
                    string status = ob.fn_ExeScalar(sel);
                    if(status == " active ")
                    {
                        Response.Redirect("User-Home.aspx");

                    }
                    else
                    {
                        Label1.Text = "User Inactive";
                    }
                    
                }


            }
            else
            {
                Label1.Text = "Invalid username and Password";
            }
        }
    }
}