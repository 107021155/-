using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch06_images_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int sum = 0;
        if (RadioButtonList1.SelectedItem.Text == "男")
            Label1.Text = "<b><font color=blue>" + TextBox1.Text + "</font></b>先生";
        else
            Label1.Text = "<b><font color=blue>" + TextBox1.Text + "</font></b>小姐";
        Label1.Text += "您好:<br />您目前購物車中的物品有<br /><font color=red>";
        // 將chkProduct核取方塊清單被選取的項目逐一顯示在lblShow標籤
        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            if (CheckBoxList1.Items[i].Selected)
            {
                Label1.Text += CheckBoxList1.Items[i].Text + " ";
                sum++;
            }
        Label1.Text += "</font>共" + sum.ToString() + "項。";
        Panel1.Visible = false;   // panelCar不顯示
        Panel2.Visible = true;   // panelCheck顯示
        Panel3.Visible = false; // panelFinish顯示
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        TextBox1.Text = "";
        // 將chkProduct核取方塊清單內的所有選項設為不勾選
        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            CheckBoxList1.Items[i].Selected = false;
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;           // 顯示第1個View, 即View1
        ImageButton1.ImageUrl = "buttons/shop-click.jpg";
        ImageButton2.ImageUrl = "buttons/art_btn.jpg";
        ImageButton3.ImageUrl = "buttons/upload_btn.jpg";
    }



    protected void Button5_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("images") + "\\" + FileUpload1.FileName);
            Label2.Text = "檔案名稱：<font color=blue>" + FileUpload1.FileName +
                "</font><br> 檔案大小：" + FileUpload1.FileContent.Length.ToString() + "bytes.";
        }
        else
            Label2.Text = "請先選取欲上傳檔案，再按上傳，謝謝!";
    }

    protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;           // 顯示第2個View, 即View2
        ImageButton1.ImageUrl = "buttons/shop_btn.jpg";
        ImageButton2.ImageUrl = "buttons/art-click.jpg";
        ImageButton3.ImageUrl = "buttons/upload_btn.jpg";
    }

    protected void ImageButton3_Click1(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;           // 顯示第3個View, 即View3
        ImageButton1.ImageUrl = "buttons/shop_btn.jpg";
        ImageButton2.ImageUrl = "buttons/art_btn.jpg";
        ImageButton3.ImageUrl = "buttons/upload-click.jpg";
    }
}