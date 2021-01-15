using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using MockFotohokje.Services;

namespace MockFotohokje.Pages.Upload
{
    public class BatchModel : PageModel
    {

        private readonly CycleGANInterfaceController cycleGAN;
        public BatchModel(CycleGANInterfaceController cgic)
        {
            cycleGAN = cgic;
        }

        public string PostingError { get; set; }

        [BindProperty]
        public IFormFile[] Images { get; set; }

        public async Task<IActionResult> OnPost()
        {
            if (Images == null || Images.Length == 0)
            {
                PostingError = "Images not found";
                return Page();
            }

            //Empty the folder
            string[] uploads = Directory.GetFiles("Uploads/Batch/");
            foreach (string upload in uploads)
                System.IO.File.Delete(upload);

            //Copy image to path
            foreach (IFormFile image in Images)
            {
                Uri path = new Uri(Path.GetFullPath("Uploads/Batch/") + image.FileName);
                using FileStream imgStream = new FileStream(Uri.UnescapeDataString(path.AbsolutePath), FileMode.Create);
                await image.CopyToAsync(imgStream);
            }

            //Use the interface on the new file
            cycleGAN.StartInterfaceBatch(new Uri(Path.GetFullPath("Uploads/Batch/")));

            return RedirectToPage("/Index");
        }
    }
}
