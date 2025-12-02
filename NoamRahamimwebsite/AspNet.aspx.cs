using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AspNet : System.Web.UI.Page
{
    public string str;
    protected void Page_Load(object sender, EventArgs e)
    {

        str = "<table border='1'>";
        for (int i = 1; i <= 10; i++)
        {
            str += "<tr/style='backround-color:blue'/>"; //notworkingyet
            for (int j = 1; j <= 10; j++)
            {
                str += "<td>";
                str += i * j;
                str += "</td>";
            }
            str += "</tr>";
        }
        str += "</table>";
    }
}