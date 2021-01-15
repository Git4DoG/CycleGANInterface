using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MockFotohokje.Model
{
    public class CycleGANSingleResult : ICycleGANresult
    {
        public Guid Id { get; set; }
        public Uri ImagePath { get; set; }
    }
}
