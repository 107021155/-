using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "歡迎光臨";
        Label2.ForeColor = System.Drawing.Color.Red;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label2.Text = TextBox1.Text + "您好,目前時間是" +
                                    DateTime.Now.ToString();
        Label2.ForeColor = System.Drawing.Color.Blue;
    }
}