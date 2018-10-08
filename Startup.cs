using System;
using System.Threading.Tasks;
using ASPNetNewsLetterHangfire.Controllers;
using Hangfire;
using Hangfire.Dashboard;
using Microsoft.Owin;
using Owin;

[assembly: OwinStartup(typeof(ASPNetNewsLetterHangfire.Startup))]

namespace ASPNetNewsLetterHangfire
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            GlobalConfiguration.Configuration
                .UseSqlServerStorage("HangFireConnectionString")
                .UseDashboardMetric(DashboardMetrics.FailedCount);

            app.UseHangfireDashboard("/jobs");
            var ctrl = new NewsController();
            RecurringJob.AddOrUpdate(() => ctrl.SendMails(), Cron.MinuteInterval(10)); //Send Every 10 minutes
            //RecurringJob.AddOrUpdate(() => ctrl.SendMails(), Cron.HourInterval(2)); //Send every 2 hours
            app.UseHangfireServer();
        }
    }
}
