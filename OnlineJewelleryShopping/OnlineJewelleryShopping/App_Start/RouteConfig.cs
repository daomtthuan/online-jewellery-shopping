using System.Web.Mvc;
using System.Web.Routing;

namespace OnlineJewelleryShopping
{
  public class RouteConfig
  {
    public static void RegisterRoutes(RouteCollection routes)
    {
      routes.LowercaseUrls = true;

      routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

      routes.MapRoute(
          name: "Default",
          url: "{action}/{id}",
          defaults: new { controller = "Default", action = "Home", id = UrlParameter.Optional }
      );
    }
  }
}
