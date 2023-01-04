using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3_1_2023
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            TextBox1.Text = CheckBox1.Text;
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            TextBox1.Text=CheckBox2.Text;
        }
    }
}