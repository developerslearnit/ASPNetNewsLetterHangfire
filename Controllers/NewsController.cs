using ASPNetNewsLetterHangfire.Helpers;
using ASPNetNewsLetterHangfire.Models;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace ASPNetNewsLetterHangfire.Controllers
{
    public class NewsController : Controller
    {
        // GET: News
        public ActionResult Index()
        {
           return View();
        }

        public async Task SendMails()
        {
            var newsEntities = new NewletterEntities();
            var customers = newsEntities.Customers;
            foreach (var item in customers)
            {
                var customerproducts = (from p in newsEntities.Products
                                        join crt in newsEntities.Carts
                                        on p.ProductId equals crt.ProductId
                                        join cust in newsEntities.Customers
                                        on crt.CartId equals cust.CustomerId.ToString()
                                        where cust.CustomerId == item.CustomerId
                                        select new
                                        {
                                            productName = p.ProductName,
                                            productImage = p.ProductImage,
                                            productPrice = p.Price
                                        }).ToList();

                StringBuilder orders = new StringBuilder();
                if (customerproducts.Any())
                {
                    foreach (var prod in customerproducts)
                    {
                        var productTemplate = TemplateHelper.BuildProductListTemplate(prod.productName, prod.productPrice, prod.productImage);

                        orders.Append(productTemplate);
                    }

                    var emailBody = TemplateHelper.BuildEmailTemplate(orders.ToString(), item.CustomerName);

                    var mailService = new EmailHelper();
                    var mailResponse = await mailService.Send("Order Reminder", item.Email, emailBody);
                }
            }





        }
    }
}