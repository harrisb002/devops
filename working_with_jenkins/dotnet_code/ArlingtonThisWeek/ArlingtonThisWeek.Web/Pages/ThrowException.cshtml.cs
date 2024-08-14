using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace ArlingtonThisWeek.Web
{
    public class ThrowExceptionModel : PageModel
    {
        public void OnGet()
        {
            throw new InvalidOperationException("This operation is invalid, and hopefully will show up in Application Insights");
        }
    }
}
