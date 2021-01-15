using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace MockCycleGAN
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                Console.WriteLine("CycleGAN started");

                string inputPath = null;
                string outputPath = null;
                for (int i = 0; i < args.Length; i += 2)
                {
                    if (i + 1 >= args.Length)
                        break;
                    if (args[i] == "-f")
                        inputPath = args[i + 1];
                    if (args[i] == "-o")
                        outputPath = args[i + 1];
                }

                if (string.IsNullOrEmpty(inputPath) || string.IsNullOrEmpty(outputPath)
                    || !Uri.TryCreate(inputPath, UriKind.RelativeOrAbsolute, out Uri inputUri)
                    || !Uri.TryCreate(outputPath, UriKind.RelativeOrAbsolute, out Uri outputUri))
                    throw new Exception("Invalid arguments");

                //if the input is a directory, get all files from it
                //if input is a file, copy just that one
                List<string> files = new List<string>();
                Console.WriteLine($"input is: {Uri.UnescapeDataString(inputUri.AbsolutePath)}");
                if (Directory.Exists(Uri.UnescapeDataString(inputUri.AbsolutePath))) //is a directory that exists
                    files.AddRange(Directory.GetFiles(Uri.UnescapeDataString(inputUri.AbsolutePath), "*.png"));
                else if (File.Exists(Uri.UnescapeDataString(inputUri.AbsolutePath))) //is a file
                    files.Add(Uri.UnescapeDataString(inputUri.AbsolutePath));
                else
                    throw new Exception("Input does not exist");

                //if output is a file, ERROR
                //if output exists, copy files from input to output
                //if output does not exist, create it and copy files
                if (Uri.UnescapeDataString(outputUri.AbsolutePath).Split('/').Last().Contains('.'))
                    throw new Exception("Output is not a folder");
                if (!Directory.Exists(Uri.UnescapeDataString(outputUri.AbsolutePath)))
                    Directory.CreateDirectory(Uri.UnescapeDataString(outputUri.AbsolutePath));

                foreach (string file in files)
                {
                    File.Copy(file, Path.Combine(Uri.UnescapeDataString(outputUri.AbsolutePath), Path.GetFileName(file)), true);
                }
            } catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            Console.WriteLine("CycleGAN done");
        }
    }
}
