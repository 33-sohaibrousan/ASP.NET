using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _28_dec
{
    public partial class task_28_dec : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SqlConnection con = new SqlConnection("data source=DESKTOP-7JI0FAF\\SQLEXPRESS; database=comment; integrated security= SSPI");
                con.Open();
                SqlCommand command = new SqlCommand($"insert into comment values('{TextBox1.Text}')", con);
                command.ExecuteNonQuery();

                SqlCommand comm = new SqlCommand("select * from comment", con);
                SqlDataReader reader = comm.ExecuteReader();
                while (reader.Read())
                {
                    Label1.Text += reader["comment"]+"<br>";
                }
                con.Close();
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert",
                                "swal('Good job!', 'comment added seccessfully ')", true);
            }
        }
    }
}