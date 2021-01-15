using System;

namespace CycleGANInterface.Model
{
    public class PathArgument : IArgument
    {
        public string Argument { get; set; }
        public Uri Value { get; set; }
        public string RawValue { get; set; }
    }
}
