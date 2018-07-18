using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_AddSign : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            String fname = FileUpload1.FileName;
            String data = "~/demoassets/" + fname;
            String act = Server.MapPath(data);
            FileUpload1.SaveAs(act);
            Response.Write("Uploaded Sucessfully");
            data = data.Substring(data.LastIndexOf("/") + 1);
            Session["n"] = data;
            Response.Redirect("~/AddFinger.aspx");
        }
    }
}