using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using MockFotohokje.Model;
using MockFotohokje.Services;
using MockFotohokje.ViewModels;

namespace MockFotohokje.Pages.Results
{
    public class IndexModel : PageModel
    {
        private readonly CycleGANResultsController results;

        public IndexModel (CycleGANResultsController results)
        {
            this.results = results;
        }

        public void OnGet()
        {
        }

        public IActionResult OnGetLoadResults ()
        {
            List<CycleGANResultListItem> listItems = new List<CycleGANResultListItem>();
            foreach (ICycleGANresult result in results.Results)
                listItems.Add(new CycleGANResultListItem { Id = result.Id });
            return new JsonResult(new { data = listItems });
        }

        [BindProperty]
        public Guid Id { get; set; }

        public void OnPost ()
        {
            if (Id == Guid.Empty)
                return;
            ICycleGANresult found = results.Results.FirstOrDefault(r => r.Id == Id);
            if (found == null)
                return;
            results.Results.Remove(found);
            if(found is CycleGANSingleResult)
                Directory.Delete(Uri.UnescapeDataString((found as CycleGANSingleResult).ImagePath.AbsolutePath), true);
            else if (found is CycleGANBatchResult)
                Directory.Delete(Uri.UnescapeDataString((found as CycleGANBatchResult).FolderPath.AbsolutePath), true);
        }
    }
}
