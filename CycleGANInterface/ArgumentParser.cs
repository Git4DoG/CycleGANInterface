using CycleGANInterface.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CycleGANInterface
{
    public class ArgumentParser
    {
        private readonly Dictionary<string, IArgument> arguments;

        public ArgumentParser (params string[] args)
        {
            arguments = new Dictionary<string, IArgument>();
            for (int i = 0; i < args.Length; i+=2)
            {
                if (i + 1 >= args.Length)
                    throw new Exception("You may not give an argument without a value");
                ParseArgument(args[i], args[i + 1]);
            }

            if (!(arguments.ContainsKey("-f") ^ arguments.ContainsKey("-b")) || !arguments.ContainsKey("-o"))
                throw new Exception("No all required arguments were received");
        }

        private void ParseArgument (string argument, string value)
        {
            //if the argument is -f it is a folder which means a pathargument.
            //if the argument is -b it is an image (bytearray) arg which means it is a bytearrayargument.
            //other acceptable arguments are -o (output folder), in the future also -m for CycleGAN method
            switch (argument)
            {
                case "-f":
                case "-F":
                    if (arguments.ContainsKey("-f") || arguments.ContainsKey("-b"))
                        //Cannot contain multiple folder arguments or a combination of b and f
                        throw new Exception("Multiple folder arguments or a combination of image and folder arguments are not allowed");
                    if(!Uri.TryCreate(value, UriKind.RelativeOrAbsolute, out Uri link))
                        throw new Exception("Invalid input path uri");
                    arguments.Add("-f", new PathArgument { Argument = "-f", RawValue = value, Value = link });
                    break;
                case "-b":
                case "-B":
                    if (arguments.ContainsKey("-f") || arguments.ContainsKey("-b"))
                        throw new Exception("Multiple folder arguments or a combination of image and folder arguments are not allowed");
                    byte[] bytes = Encoding.UTF8.GetBytes(value);
                    if(bytes.Length == 0)
                        throw new Exception("Could not create image");
                    arguments.Add("-b", new ByteArrayArgument { Argument = "-b", Value = bytes });
                    break;
                case "-o":
                case "-O":
                    if(arguments.ContainsKey("-o"))
                        throw new Exception("Multiple output folder arguments are not allowed");
                    if (!Uri.TryCreate(value, UriKind.RelativeOrAbsolute, out Uri outputPath) ||
                        outputPath.AbsolutePath.Split('/').Last().Contains('.'))
                        throw new Exception("Invalid output path uri");
                    arguments.Add("-o", new PathArgument { Argument = "-o", RawValue = value, Value = outputPath });
                    break;
                default:
                    throw new Exception($"Invalid argument {argument}");
            }
        }

        public bool TryGetArgument (string argument, out IArgument value)
        {
            return arguments.TryGetValue(argument, out value);
        }
    }
}
