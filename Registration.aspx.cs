using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {

        ShowTrackerEntities brde = new ShowTrackerEntities();
        KeyCode k = new KeyCode();
        int seed = k.GetKeyCode();
        PasswordHash phash = new PasswordHash();

    /*    try
        { */
            byte[] pass = phash.HashIt(txtConfirm.Text, seed.ToString());

            FanLogin fnl = new FanLogin();
            Fan fn = new Fan();
            fn.FanName = txtFanName.Text;
            fn.FanEmail = txtEmail.Text;
            fnl.FanLoginUserName = txtUserName.Text;
            fnl.Fan = fn;
            fnl.FanLoginPasswordPlain = txtConfirm.Text;
            fnl.FanLoginRandom = seed;
            fnl.FanLoginHashed = pass;


            brde.Fans.Add(fn);
            brde.FanLogins.Add(fnl);
           
            brde.SaveChanges();

            lblErrorSuccess.Text = "You were successfully registered";



        //}
     /*   catch (Exception ex)
        {
            lblErrorSuccess.Text = ex.Message;
        }*/
    }
}
