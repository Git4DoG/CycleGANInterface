using System;

namespace MockFotohokje.Model
{
    public interface ICycleGANresult
    {
        public Guid Id { get; set; }
        public DateTime Created { get; set; }
    }
}
