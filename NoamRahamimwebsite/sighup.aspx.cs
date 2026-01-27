using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sighup : System.Web.UI.Page
{
    public string strR = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            string firstName = Request.Form["firstname"];
            string email = Request.Form["email"];
            string password = Request.Form["password"];
            string favoriteExercises = Request.Form["check2"];
            string favoriteMuscle = Request.Form["radio1"];
            string split = Request.Form["textarea1"];
            string age = Request.Form["age"];

            string sqlInsert = "INSERT INTO [dbo].[tUsers] " +
                    "VALUES " +
                    "(N'" + firstName + "', " +
                    "N'" + email + "', " +
                    "N'" + password + "', " +
                    "N'" + favoriteExercises + "', " +
                    "N'" + favoriteMuscle + "', " +
                    "N'" + split + "', " +
                    age + ")";


            MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

            strR = "ok";
        }
    }
}