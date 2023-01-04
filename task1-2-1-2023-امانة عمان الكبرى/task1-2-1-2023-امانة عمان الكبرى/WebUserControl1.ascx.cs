using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

namespace task1_2_1_2023_امانة_عمان_الكبرى
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["vote"] != null)
            {
                main.Visible = false;
                result.Visible = true;



                SqlConnection con = new SqlConnection("data source = DESKTOP-7JI0FAF\\SQLEXPRESS; database=vote;integrated security=SSPI");

                SqlCommand comm = new SqlCommand($"SELECT SUM(Excellent +very_good + good + poor + acceptable ) from votetable2", con);
                con.Open();
                Label6.Text = comm.ExecuteScalar().ToString();
                int all = (int)comm.ExecuteScalar();

                con.Close();

                try
                {
                    con.Open();

                    SqlCommand command1 = new SqlCommand($"SELECT SUM(Excellent) FROM votetable2;", con);


                    int esum = (int)command1.ExecuteScalar();
                    double ex = (double)esum / (double)all;
                    ex = Math.Round(ex, 2);
                    Label1.Text = (ex * 100).ToString() + "  %";
                    Chart1.ChartAreas[0].AxisX.Title = "Option";
                    Chart1.ChartAreas[0].AxisY.Title = "Percentage";

                    Series series = Chart1.Series.Add("Excellent");
                    series.ChartType = SeriesChartType.Column;

                    DataPoint point = series.Points.Add(ex * 100);
                    point.AxisLabel = "Excellent";

                    point.LegendText = ex * 100 + " %";


                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
                finally
                {
                    con.Close();
                }


                try
                {
                    con.Open();
                    SqlCommand command1 = new SqlCommand("SELECT SUM(very_good) from votetable2;", con);

                    int vsum = (int)command1.ExecuteScalar();
                    double vg = (double)vsum / (double)all;
                    vg = Math.Round(vg, 2);
                    Label2.Text = (vg * 100).ToString() + "  %";

                    Chart1.ChartAreas[0].AxisX.Title = "Option";
                    Chart1.ChartAreas[0].AxisY.Title = "Percentage";

                    Series series = Chart1.Series.Add("very_good");
                    series.ChartType = SeriesChartType.Column;

                    DataPoint point = series.Points.Add(vg * 100);
                    point.AxisLabel = "very_good";

                    point.LegendText = vg * 100 + " %";
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
                finally
                {
                    con.Close();
                }
                try
                {
                    con.Open();
                    SqlCommand command1 = new SqlCommand("SELECT SUM(good) from votetable2;", con);

                    int gsum = (int)command1.ExecuteScalar();
                    double g = (double)gsum / (double)all;
                    g = Math.Round(g, 2);
                    Label3.Text = (g * 100).ToString() + "  %";
                    Chart1.ChartAreas[0].AxisX.Title = "Option";
                    Chart1.ChartAreas[0].AxisY.Title = "Percentage";

                    Series series = Chart1.Series.Add("good");
                    series.ChartType = SeriesChartType.Column;

                    DataPoint point = series.Points.Add(g * 100);
                    point.AxisLabel = "good";

                    point.LegendText = g * 100 + " %";
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
                finally
                {
                    con.Close();
                }


                try
                {
                    con.Open();
                    SqlCommand command1 = new SqlCommand("SELECT SUM(poor) from votetable2;", con);
                    int psum = (int)command1.ExecuteScalar();
                    double p = (double)psum / (double)all;
                    p = Math.Round(p, 2);
                    Label4.Text = (p * 100).ToString() + "  %";
                    Chart1.ChartAreas[0].AxisX.Title = "Option";
                    Chart1.ChartAreas[0].AxisY.Title = "Percentage";

                    Series series = Chart1.Series.Add("poor");
                    series.ChartType = SeriesChartType.Column;

                    DataPoint point = series.Points.Add(p * 100);
                    point.AxisLabel = "poor";

                    point.LegendText = p * 100 + " %";
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
                finally
                {
                    con.Close();
                }



                try
                {
                    con.Open();
                    SqlCommand command1 = new SqlCommand("SELECT SUM(acceptable) from votetable2;", con);
                    int asum = (int)command1.ExecuteScalar();
                    double a = (double)asum / (double)all;
                    a = Math.Round(a, 2);
                    Label5.Text = (a * 100).ToString() + "  %";
                    Chart1.ChartAreas[0].AxisX.Title = "Option";
                    Chart1.ChartAreas[0].AxisY.Title = "Percentage";

                    Series series = Chart1.Series.Add("acceptable");
                    series.ChartType = SeriesChartType.Column;

                    DataPoint point = series.Points.Add(a * 100);
                    point.AxisLabel = "acceptable";

                    point.LegendText = a * 100 + " %";
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
                finally
                {
                    con.Close();
                }


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           

                SqlConnection con = new SqlConnection("data source = DESKTOP-7JI0FAF\\SQLEXPRESS; database=vote;integrated security=SSPI");
                SqlCommand command = new SqlCommand("INSERT INTO votetable2 (Excellent, very_good, good, poor, acceptable) VALUES (@1, @2, @3, @4, @5)", con);

                command.Parameters.AddWithValue("@1", RadioButton1.Checked ? 1 : 0);
                command.Parameters.AddWithValue("@2", RadioButton2.Checked ? 1 : 0);
                command.Parameters.AddWithValue("@3", RadioButton3.Checked ? 1 : 0);
                command.Parameters.AddWithValue("@4", RadioButton4.Checked ? 1 : 0);
                command.Parameters.AddWithValue("@5", RadioButton5.Checked ? 1 : 0);

                command.Connection.Open();
                command.ExecuteNonQuery();
                con.Close();
                HttpCookie cookie = new HttpCookie("vote");
                cookie.Values["vote"] = "voted";
                cookie.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(cookie);
            Response.Redirect("task1.aspx");







        }
    }
}