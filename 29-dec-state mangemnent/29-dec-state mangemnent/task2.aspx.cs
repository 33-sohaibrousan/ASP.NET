using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _29_dec_state_mangemnent
{
    public partial class task2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["time"] != null)
                {
                    
                    HttpCookie col = Request.Cookies["time"];
                    Label1.Text = DateTime.Now.ToString();
                    string color1 = col["color"];
                    //string drop = col["name"];
                    Label1.Attributes.Add("style", $"color:{color1}");
                    DropDownList1.Text = col["name"];


                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            HttpCookie time = new HttpCookie("time");
            time.Values.Add("color", DropDownList1.SelectedValue);
            time.Values.Add("name", DropDownList1.Text);

            time.Expires=DateTime.Now.AddDays(1);
            Response.Cookies.Add(time);

            Label1.Attributes.Add("style", $"color:{DropDownList1.SelectedValue}");


        }



        protected void Timer1_Tick1(object sender, EventArgs e)
        {

            Label1.Text = DateTime.Now.ToString();

        }
    }
}