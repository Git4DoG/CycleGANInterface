using System;

namespace MockFotohokje.Model
{
    public class CycleGANSingleResult : ICycleGANresult
    {
        public Guid Id { get; set; }
        public Uri ImagePath { get; set; }
    }
}
