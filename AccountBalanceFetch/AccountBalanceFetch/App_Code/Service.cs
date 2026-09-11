using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data.SqlClient;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service" in code, svc and config file together.
public class Service : IService
{

	SqlConnection con = new SqlConnection(@"server=LAPTOP-QK9QR22V\SQLEXPRESS;database=CamStore;integrated security = true");

	public int CheckBalance(int accno)
    {
		string sel = "select bal_amount from account where acc_num = "+accno+"";
		SqlCommand cmd = new SqlCommand(sel,con);
		con.Open();
		int bal = 0;
		SqlDataReader dr = cmd.ExecuteReader();
        while(dr.Read()){
			bal = Convert.ToInt32(dr["bal_amount"]);
        }
		con.Close();
		return bal;
    }

	public string GetData(int value)
	{
		return string.Format("You entered: {0}", value);
	}

	public CompositeType GetDataUsingDataContract(CompositeType composite)
	{
		if (composite == null)
		{
			throw new ArgumentNullException("composite");
		}
		if (composite.BoolValue)
		{
			composite.StringValue += "Suffix";
		}
		return composite;
	}
}
