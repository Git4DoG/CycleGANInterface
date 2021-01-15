using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MockFotohokje.Model
{
    public class CycleGANBatchResult : ICycleGANresult
    {
        public Guid Id { get; set; }
        public Uri FolderPath { get; set; }
    }
}
