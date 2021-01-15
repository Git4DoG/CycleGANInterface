using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using MockFotohokje.Model;
using MockFotohokje.Services;

namespace MockFotohokje.Pages.Results
{
    public class DetailsModel : PageModel
    {
        private readonly CycleGANResultsController results;

        public ICycleGANresult Result { get; set; }
        public List<string> Pictures { get; set; }

        public DetailsModel (CycleGANResultsController results)
        {
            this.results = results;
        }
        public IActionResult OnGet(Guid id)
        {
            Result = results.Results.FirstOrDefault(r => r.Id == id);
            if (Result == null)
                return RedirectToPage("/Results/Index");

            Pictures = new List<string>();
            List<string> files = new List<string>();
            if(Result is CycleGANSingleResult)
            {
                //Get the folder uri and get the first file
                CycleGANSingleResult single = Result as CycleGANSingleResult;
                string[] found = Directory.GetFiles(Uri.UnescapeDataString(single.ImagePath.AbsolutePath));
                if (found.Length == 0)
                    return Page();
                files.Add(found[0]);
            } else
            {
                CycleGANBatchResult batch = Result as CycleGANBatchResult;
                string[] found = Directory.GetFiles(Uri.UnescapeDataString(batch.FolderPath.AbsolutePath));
                if (found.Length == 0)
                    return Page();
                files.AddRange(found);
            }

            foreach(string file in files)
                Pictures.Add(file.Split("wwwroot")[1]);

            return Page();
        }
    }
}
