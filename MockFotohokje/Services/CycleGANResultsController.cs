using MockFotohokje.Model;
using System;
using System.Collections.Generic;
using System.Linq;

namespace MockFotohokje.Services
{
    public class CycleGANResultsController
    {
        public List<ICycleGANresult> Results { get; }
        private readonly int maxTries = 3;

        public CycleGANResultsController ()
        {
            Results = new List<ICycleGANresult>();
        }

        public Guid GetNewGuid()
        {
            Guid result = Guid.NewGuid();
            int count = 0;
            while (Results.Exists(r => r.Id == result) && count < maxTries)
            {
                result = Guid.NewGuid();
                count++;
            }
            if (count == maxTries)
                throw new Exception("Could not generate GUID for result");
            return result;
        }

        public void AddResult (ICycleGANresult result)
        {
            //If the guid was encoded in the path (outputfolder = standard), get that guid and use it
            //If not, create a new guid
            string guid;
            if (result is CycleGANSingleResult)
                guid = (result as CycleGANSingleResult).ImagePath.AbsoluteUri.Split('/').Last().Trim();
            else
                guid = (result as CycleGANBatchResult).FolderPath.AbsoluteUri.Split('/').Last().Trim();

            if (!Guid.TryParse(guid, out Guid id))
                result.Id = GetNewGuid();
            else
                result.Id = id;

            Results.Add(result);
        }
    }
}
