using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace _02._CLIWEB.Pages
{
    public class AccederModel : PageModel
    {
        public IActionResult OnPost(string username, string password)
        {
            if (username == "MONSTER" && password == "MONSTER9")
            {
                return RedirectToPage("Convertir");
            }
            else
            {
                TempData["ErrorLogin"] = "Usuario o contrase�a incorrectos. Intente nuevamente.";
                return RedirectToPage(); // recarga misma p�gina con mensaje
            }
        }

        public void OnGet()
        {
        }
    }
}
