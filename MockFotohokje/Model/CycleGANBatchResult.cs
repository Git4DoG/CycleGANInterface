using System;

namespace MockFotohokje.Model
{
    public class CycleGANBatchResult : ICycleGANresult
    {
        public Guid Id { get; set; }
        public Uri FolderPath { get; set; }
        public DateTime Created { get; set; }
    }
}
