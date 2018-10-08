using SendGrid;
using SendGrid.Helpers.Mail;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace ASPNetNewsLetterHangfire.Helpers
{
    public class EmailHelper
    {
        string apiKey = ConfigurationManager.AppSettings["SendGripAPIKey"];
        string fromEmail = ConfigurationManager.AppSettings["FromEmail"];
        string fromEmailDisplayName = ConfigurationManager.AppSettings["FromEmailDisplayName"];

        public async Task<string> Send(string subject, string to, string body, string cc = null, string bcc = null)
        {

            var mailClient = new SendGridClient(apiKey);
            var message = new SendGridMessage()
            {
                From = new EmailAddress(fromEmail, fromEmailDisplayName),
                Subject = subject,
                HtmlContent = body
            };

            message.AddTo(new EmailAddress(to));

            if (!string.IsNullOrWhiteSpace(cc)) { message.AddBcc(new EmailAddress(cc)); }

            if (!string.IsNullOrWhiteSpace(bcc)) { message.AddBcc(new EmailAddress(bcc)); }

            var response = await mailClient.SendEmailAsync(message);
            return response.StatusCode.ToString();

        }
    }
}