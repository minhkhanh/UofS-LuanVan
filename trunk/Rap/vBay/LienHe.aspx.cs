using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Configuration;
using System.Net.Configuration;
using System.Web.Configuration;

namespace vBay
{
    public partial class LienHe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbKetQua.Visible = false;
        }

        

        void SendWelcomeMail(string to, string subject, string body)
        {

            Configuration config = WebConfigurationManager.OpenWebConfiguration(HttpContext.Current.Request.ApplicationPath);
            MailSettingsSectionGroup settings = (MailSettingsSectionGroup)config.GetSectionGroup("system.net/mailSettings");


            string mailServer = settings.Smtp.Network.Host;
            int mailPort = settings.Smtp.Network.Port;
            string user = settings.Smtp.Network.UserName;
            string pass = settings.Smtp.Network.Password;
            string mailFrom = settings.Smtp.From;

            MailMessage mailMessage = new MailMessage();
            SmtpClient mailClient = new SmtpClient(mailServer, mailPort);
            mailClient.Timeout = 15000;
            mailClient.Credentials = new NetworkCredential(user, pass);
            mailClient.EnableSsl = true;
            //mailClient.UseDefaultCredentials = true; // no work

            mailMessage.IsBodyHtml = true;
            mailMessage.From = new MailAddress(mailFrom);
            mailMessage.Subject = subject;
            mailMessage.Body = body;
            mailMessage.To.Add(to);

            try
            {
                mailClient.Send(mailMessage);
                Response.Write("Gởi mail thành công");
            }
            catch (Exception ex)
            {
                Response.Write("Gởi mail thất bại, " + ex.Message);
            }

        }

        protected void btGoiTin_Click(object sender, EventArgs e)
        {
            lbKetQua.Visible = true;
            lbKetQua.Text = "Gởi tin thành công";
        }
    }
}