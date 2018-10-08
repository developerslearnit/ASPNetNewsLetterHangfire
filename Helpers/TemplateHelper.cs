using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace ASPNetNewsLetterHangfire.Helpers
{
    public class TemplateHelper
    {
        public static string BuildProductListTemplate(string productName, decimal productPrice, string productImage)
        {

            var body = string.Empty;
            using (StreamReader reader = new StreamReader(HttpContext.Current.Server.MapPath("~/App_Data/ProductListTemplate.html")))
            {
                body = reader.ReadToEnd();
            }

            body = body.Replace("{productImage}", productImage)
                .Replace("{productName}", productName)
                .Replace("{productPrice}", productPrice.ToString("#,##.00"));

            return body;
        }


        public static string BuildEmailTemplate(string productList, string customerName)
        {

            var body = string.Empty;
            using (StreamReader reader = new StreamReader(HttpContext.Current.Server.MapPath("~/App_Data/MailTemplate.html")))
            {
                body = reader.ReadToEnd();
            }

            body = body.Replace("{customerName}", customerName)
                .Replace("{productList}", productList);

            return body;
        }
    }
}