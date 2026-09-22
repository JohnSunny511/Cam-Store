using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.Net.Mail;
using System.Text;

namespace CamStore
{
    public partial class ViewFeedBack : System.Web.UI.Page
    {
        ConClass ob = new ConClass();
        int sid,pid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grid_bind();
                
            }

        }

        public void grid_bind()
        {
            string sel = "SELECT dbo.usertb.user_id, dbo.usertb.username, dbo.usertb.email, dbo.feedback.product_id, dbo.feedback.feedback_msg, dbo.feedback.feedback_date FROM dbo.usertb INNER JOIN dbo.feedback ON dbo.usertb.user_id = dbo.feedback.user_id where feedback_status = 'Active'";
            DataSet ds = ob.fn_Adapter_DataSet(sel);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            string[] values = e.CommandArgument.ToString().Split(',');
            sid =  Convert.ToInt32(values[0]);
            Session["sid"] = sid;
            pid = Convert.ToInt32(values[1]);
            Session["pid"] = pid;
            Label1.Text = sid.ToString();
            Label2.Text = pid.ToString();
            Panel1.Visible = true;
            string sel = "select username,email from usertb where user_id =" + sid;
            SqlDataReader dr = ob.fn_exereader(sel);
            while (dr.Read())
            {
                TextBox6.Text = dr["email"].ToString();
            }
            TextBox5.Text = "admin@gmail.com";
            TextBox7.Text = "Reply for feedback";


        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            sid = Convert.ToInt32(Session["sid"]);
            pid = Convert.ToInt32(Session["pid"]);
            string upd = "update feedback set reply_msg='" + TextBox8.Text + "',feedback_status='Inactive' where feedback_status = 'active' and user_id = " + sid + " and product_id = " + pid;
            int i = ob.fn_ExecuteNonQuery(upd);
            if(i == 1)
            {
                Label1.Text = "updated";
            }

            grid_bind();
            Panel1.Visible = false;

            



        }

        public static void SendEmail2(string yourName, string yourGmailUserName, string yourGmailPassword, string toName, string toEmail, string subject, string body)

        {
            string to = toEmail; //To address    
            string from = yourGmailUserName; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}