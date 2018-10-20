using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddJob : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    string name;
    string loc;
    string comp;
    int salMin;
    int salMax;
    string workHrs;
    string pos;
    string eduLvl;
    string major;
    string desc;
    string req;
    

    protected void JobNameAJ_TB_TextChanged(object sender, EventArgs e)
    {
        name = JobNameAJ_TB.Text;
    }

    protected void JobLocAJ_TB_TextChanged(object sender, EventArgs e)
    {
        loc = JobLocAJ_TB.Text;
    }

    protected void CompNameAJ_TB_TextChanged(object sender, EventArgs e)
    {
        comp = CompNameAJ_TB.Text;
    }

    protected void SalMinAJ_TB_TextChanged(object sender, EventArgs e)
    {
        salMin = int.Parse(SalMinAJ_TB.Text);
    }

    protected void SalMaxAJ_TB_TextChanged(object sender, EventArgs e)
    {
        salMax = int.Parse(SalMaxAJ_TB.Text);
    }

    protected void WorkHrsAJ_TB_TextChanged(object sender, EventArgs e)
    {
        workHrs = WorkHrsAJ_TB.Text;
    }

    protected void PositionAJ_DDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        pos = PositionAJ_DDL.Text;
    }

    protected void EduLvlAJ_DDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        eduLvl = EduLvlAJ_DDL.Text;
    }

    protected void JobMajorAJ_TB_TextChanged(object sender, EventArgs e)
    {
        major = JobMajorAJ_TB.Text;
    }

    protected void JobDescAJ_TB_TextChanged(object sender, EventArgs e)
    {
        desc = JobDescAJ_TB.Text;
        
    }

    protected void JobReqAJ_TB_TextChanged(object sender, EventArgs e)
    {
        req = JobReqAJ_TB.Text;
    }



    protected void LinkToConfirmAddJobAJ_BTN_Click(object sender, EventArgs e)
    {
        Service AddJobClass = new Service();
        AddJobClass.AddJob(name, loc, comp, salMin, salMax, workHrs, pos, eduLvl, major, desc, req);
        Response.Redirect("ConfirmAddJob.aspx");
    }



    protected void ReturnHomePageAJ_LNK_Click(object sender, EventArgs e)
    {
        Response.Redirect("Employer.aspx");
    }
}