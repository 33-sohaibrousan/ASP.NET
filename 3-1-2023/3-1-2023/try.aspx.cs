using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3_1_2023
{
    public partial class _try : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Calendar1.Visible = false;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Label1.Text = TextBox1.Text;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        //protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        //{
        //    Label1.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
        //}

        //protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        //{
        //    //Label1.Text = Calendar1.SelectedDate.ToString("MM/dd/yyyy");
        //    //Label2.Text = Calendar1.SelectedDate.ToString("MM/dd/yyyy");
        //}
        //static bool flag = false;
        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    if (flag == false)
        //    {
        //        Calendar1.Visible = true;
        //        flag = true;
        //    }
        //    else
        //    {
        //        Calendar1.Visible = false;
        //        flag = false;
        //    }
        //}



    }
}