using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using MockFotohokje.Services;

namespace MockFotohokje.Pages.Upload
{
    public class SingleModel : PageModel
    {
        private readonly CycleGANInterfaceController cycleGAN;
        public SingleModel (CycleGANInterfaceController cgic)
        {
            cycleGAN = cgic;
        }

        public string PostingError { get; set; }

        [BindProperty]
        public IFormFile Image { get; set; }

        public async Task<IActionResult> OnPost()
        {
            if (Image == null)
            {
                PostingError = "Image not found";
                return Page();
            }

            //Empty the folder
            string[] uploads = Directory.GetFiles("Uploads/Single/");
            foreach (string upload in uploads)
                System.IO.File.Delete(upload);

            //Copy image to path
            Uri path = new Uri(Path.GetFullPath("Uploads/Single/") + Image.FileName);
            using FileStream imgStream = new FileStream(Uri.UnescapeDataString(path.AbsolutePath), FileMode.Create);
            await Image.CopyToAsync(imgStream);

            //Use the interface on the new file
            cycleGAN.StartInterfaceSingle(path);

            return RedirectToPage("/Index");
        }
    }
}
