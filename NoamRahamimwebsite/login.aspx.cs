using System;
using System.Web.UI;

public partial class login : System.Web.UI.Page
{
    public string strResult = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            // --- קבלת ערכים מהטופס ---
            string email = Request.Form["email"];
            string pass = Request.Form["pass"];

            // --- בדיקה במסד נתונים אם קיים משתמש כזה ---
            string sqlLogin = "SELECT * FROM [dbo].[tUsers] " +
                              "WHERE email = N'" + email + "' " +
                              "AND password = N'" + pass + "'";

            bool userExists = MyAdoHelper.IsExsist("MyDB.mdf", sqlLogin);

            if (userExists)
            {
                strResult = " התחברת בהצלחה!";
            }
            else
            {
                strResult = " אימייל או סיסמה שגויים";
            }
        }
    }
}
