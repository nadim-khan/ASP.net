using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class add_new : System.Web.UI.Page
{
    void Session_start(object sender,EventArgs e)
    {

    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string vname, vaccount, vcontact;
        vname = TextBox1.Text;
        vcontact = TextBox3.Text;
        vaccount = TextBox2.Text;
        RecordDataSetTableAdapters.RecordTableAdapter rta;
        rta = new RecordDataSetTableAdapters.RecordTableAdapter();
        try
        {
            rta.Insert(vname, vaccount, vcontact);
            Registermsg.Text = "Successfully Registred";
           
        }
        catch
        {
            Registermsg.Text="Something Went Wrong";
        }
        Session["Name"] = TextBox1.Text;
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}