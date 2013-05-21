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
        CommunityAssistEntities cae = new CommunityAssistEntities();
        var serv = from s in cae.Services
                   orderby s.ServiceName
                   select new { s.ServiceName, s.ServiceDescription };

        DataList1.DataSource = serv.ToList();
        DataList1.DataBind();
    }
}