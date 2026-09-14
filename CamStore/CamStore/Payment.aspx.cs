using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            int userid = Convert.ToInt32(Session["regid"]);
            AccBal.ServiceClient obj = new AccBal.ServiceClient();
            int bal = obj.CheckBalance(Convert.ToInt32(TextBox3.Text));
            Label2.Text = bal.ToString();
            int gtotal = Convert.ToInt32(Session["gtotal"]);
            if(gtotal < bal)
            {
                string s = "select product_id from orderr where user_id =" + userid + " and order_status = 'order'";
                SqlDataReader dr = ob.fn_exereader(s);
                List<int> pdtidlst = new List<int>();
                while (dr.Read())
                {
                    pdtidlst.Add(Convert.ToInt32(dr["product_id"]));//123
                }
                foreach (int pid in pdtidlst)
                {
                    string up = "update orderr set order_status = 'paid' where user_id = " + userid + " and order_status = 'order' and product_id = " + pid;
                    int i = ob.fn_ExecuteNonQuery(up);
                    if (i == 1)
                    {
                        Label4.Text = "Order updated";

                    }
                    string sel = "select stock from product where product_id =" + pid;
                    int stock = Convert.ToInt32(ob.fn_ExeScalar(sel));
                    string qun = "select order_quantity from orderr where user_id =" + userid + " and order_status = 'paid' and product_id =" + pid;
                    int quntity = Convert.ToInt32(ob.fn_ExeScalar(qun));
                    int newStock = stock - quntity;
                    string upd = "update product set stock =" + newStock + " where product_id = " + pid;
                    int j = ob.fn_ExecuteNonQuery(upd);
                    if (j == 1)
                    {
                        Label5.Text = "Updated the product stock";
                    }
                    int newbal = bal - gtotal;
                    int k = obj.UpdateBalance(Convert.ToInt32(TextBox3.Text), newbal);
                    if (k == 1)
                    {
                        Label6.Text = "Balance Updated";
                    }

                }

            }
            else
            {
                Label6.Text = "Insucfficent Balance";
            }
            
        }
    }
}