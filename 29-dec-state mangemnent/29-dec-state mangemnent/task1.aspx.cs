using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _29_dec_state_mangemnent
{
    public partial class task1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["loginCookie"];
            if (cookie != null)
            {
                 email.Text = cookie["email"];
                password.Attributes["value"] = cookie["password"];
                Label lab = new Label();
                lab.Text=password.Text;
                this.Controls.Add(lab);
            }

            if (cookie != null)
            {
                string isChecked = cookie["isChecked"];
                CheckBox1.Checked = Convert.ToBoolean(isChecked);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("loginCookie");
            cookie["email"] = email.Text;
            cookie["password"] = password.Text;
            Response.Cookies.Add(cookie);
            cookie.Expires = DateTime.Now.AddSeconds(10);

            Response.Redirect("task1.aspx");
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            //HttpCookie cookie = new HttpCookie("checkboxCookie");
            //cookie["isChecked"] = CheckBox1.Checked.ToString();
            //Response.Cookies.Add(cookie);


            if (CheckBox1.Checked)
            {
                HttpCookie cookie = new HttpCookie("loginCookie");
                cookie["email"] = email.Text;
                cookie["password"] = password.Text;
                Response.Cookies.Add(cookie);
            }
            else
            {
                HttpCookie cookie = Request.Cookies["loginCookie"];
                if (cookie != null)
                {
                    cookie.Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies.Add(cookie);
                }
            }

        }
    }
}