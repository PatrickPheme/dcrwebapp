using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using WingtipToys.Logic;
using WingtipToys.Models;
using Microsoft.AspNet.SignalR;

namespace WingtipToys
{
    public class Global : HttpApplication
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                "Order", // Route name
                "{controller}/{action}/{id}", // URL with parameters
                new { controller = "Order", action = "Index", id = UrlParameter.Optional } // Parameter defaults
            );

        }
        void Application_Start(object sender, EventArgs e)
        {

            AreaRegistration.RegisterAllAreas();
        //    RegisterGlobalFilters(GlobalFilters.Filters);

            try
            {
                Database.SetInitializer(new ProductDatabaseInitializer());
            }
            catch (DbEntityValidationException dbEx)
            {
                foreach (var validationErrors in dbEx.EntityValidationErrors)
                {
                    foreach (var validationError in validationErrors.ValidationErrors)
                    {
                        Trace.TraceInformation("Property jttfcwyefqiuwgduyfg: {0} Error: {1}", validationError.PropertyName, validationError.ErrorMessage);
                    }
                }
            }
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            // creating a role for administrator
           
            RoleActions roleActions = new RoleActions();
            roleActions.createAdmin();
        }
    }
}