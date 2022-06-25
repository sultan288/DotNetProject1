using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamPrep1
{
    public partial class login2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text == "admin" && txtPassword.Text == "123")
            {
                Session["UserName"] = "Sultan";
                Session["UserId"] = "1";
                Response.Redirect("~/Student/StudentRegistration.aspx");
            }
        }
    }
}