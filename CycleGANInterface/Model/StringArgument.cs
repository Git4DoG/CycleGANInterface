using System;
using System.Collections.Generic;
using System.Text;

namespace CycleGANInterface.Model
{
    public class StringArgument : IArgument
    {
        public string Argument { get; set; }
        public string Value { get; set; }
    }
}
