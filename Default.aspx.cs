﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
        //string value = Encrypter.Encrypt("Erica");
        // "mail.ehcms.on",587
        // Common.SendEmail( "ramendra.sukriti@gmail.com", "HI test Email", "TEst Subject");


    }
}

   
