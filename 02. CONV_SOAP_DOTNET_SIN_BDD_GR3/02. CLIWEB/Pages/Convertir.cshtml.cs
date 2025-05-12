using _02._CLICON.ec.edu.monster.controlador;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using ServiceReference1;

namespace _02._CLIWEB.Pages
{
    public class ConvertirModel : PageModel
    {
        private readonly ConversionControlador _conversionControlador;

        public ConvertirModel() => _conversionControlador = new ConversionControlador();

        [BindProperty]
        public Request RequestData { get; set; }

        public Response ResponseData { get; set; }

        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            ResponseData = await _conversionControlador.convertirAsync(RequestData);

            return Page();
        }
    }
}
