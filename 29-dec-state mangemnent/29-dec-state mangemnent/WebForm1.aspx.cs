using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _29_dec_state_mangemnent
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (ViewState["view"] != null) { 
            //label.Text = ViewState["view"].ToString();
            //}
            if (!IsPostBack)
            {
                // Initialize view state on first page load
                ViewState["counter"] = 0;
            }

            //--------------------HiddenField Class ---------------------------------

            if (!IsPostBack)
            {
                // Initialize the hidden field on first page load
                //HiddenField1.Value = "Hello, World!";
                
            }




            Label2.Text =Application["AppstartMessage"].ToString();


        }

       

        protected void Button1_Click1(object sender, EventArgs e)
        {
            //this.ViewState["view"] = 3;
            //Response.Redirect("WebForm1.aspx");

            // Increment the counter in view state
            int counter = (int)ViewState["counter"];
            counter++;
            ViewState["counter"] = counter;

            // Display the current count in a label
            label.Text = "Counter: " + counter;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Retrieve the value from the hidden field
            //string value = HiddenField1.Value;

            //// Display the value in a label
            //Label1.Text = "Value: " + value;

            int count = int.Parse(HiddenField1.Value.ToString()) + 1;
            HiddenField1.Value = count.ToString();
            Label1.Text = count.ToString();







        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            //Response.Cookies["cokies"].Value = TextBox1.Text;
            //Response.Cookies["cokies"].Expires =DateTime.Now.AddMinutes(3);  
            //Response.Redirect("WebForm2.aspx");

            //HttpCookie cookie = new HttpCookie("GeoLocation");
            //cookie["Language"] = "Hindi";  //assign value for cookie
            ////cookie["Country"] = "INDIA";
            ////Add cookie
            //Response.Cookies.Add(cookie);
            ////You may also set cookie expiry date
            //cookie.Expires = DateTime.Now.AddYears(1);


            string username = TextBox1.Text;

            if (Page.IsValid)
            {
                // Create a new login cookie
                HttpCookie cookie = new HttpCookie("login");
                cookie.Value = username;
                cookie.Expires = DateTime.Now.AddDays(7);
                cookie.Path = "/";
                Response.Cookies.Add(cookie);

                // Redirect to the home page or other protected area of the website
                Response.Redirect("/WebForm2.aspx");
            }
            else
            {
                // Display an error message
                Label1.Text = "Invalid username or password";
            }
        }

    }


    
}