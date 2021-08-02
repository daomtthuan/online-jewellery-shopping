using System.Web.Optimization;

namespace OnlineJewelleryShopping
{
  public class BundleConfig
  {
    public static void RegisterBundles(BundleCollection bundles)
    {
      bundles.Add(new Bundle("~/bundles/styles").Include(
        "~/Assets/Vendors/fontawesome/css/all.min.css",
        "~/Assets/Vendors/bootstrap/css/bootstrap.min.css",
        "~/Assets/Styles/app.css"));

      bundles.Add(new Bundle("~/bundles/scripts").Include(
        "~/Assets/Vendors/bootstrap/js/bootstrap.bundle.min.js",
        "~/Assets/Scripts/app.js"));
    }
  }
}
