using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class abc : System.Web.UI.Page
{
  public  String v,v2;
    protected void Page_Load(object sender, EventArgs e)
    {
       v = (String)Session["n"];
    }
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        
    }
    protected void Unnamed2_Click(object sender, EventArgs e)
    {
        
    }
    protected void Unnamed3_Click(object sender, EventArgs e)
    {
        
    }
    protected void Unnamed4_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        v2 = "1.jpg";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        v2 = "2.jpg";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        v2 = "3.jpg";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        v2 = "ritu.jpg";
    }
}