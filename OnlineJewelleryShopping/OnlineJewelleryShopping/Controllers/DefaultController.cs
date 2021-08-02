using System.Web.Mvc;

namespace OnlineJewelleryShopping.Controllers
{
  public class DefaultController : Controller
  {
    public ActionResult Home()
    {
      return View();
    }

    public ActionResult About()
    {
      ViewBag.Message = "Your application description page.";

      return View();
    }

    public ActionResult Contact()
    {
      ViewBag.Message = "Your contact page.";

      return View();
    }
  }
}
