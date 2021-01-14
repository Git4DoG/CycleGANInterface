using System;
using System.Collections.Generic;
using System.Text;

namespace CycleGANInterface.Model
{
    public class ByteArrayArgument : IArgument
    {
        public string Argument { get; set; }
        public byte[] Value { get; set; }
    }
}
