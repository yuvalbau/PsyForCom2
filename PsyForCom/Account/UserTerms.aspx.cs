using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PsyForCom.Account
{
    public partial class UserTerms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //comment to delete later 
        }

        protected void RegisterUser(object sender, EventArgs e)
        {
            Server.Transfer("UserRegister.aspx", true);
        }
    }
}