using CycleGANInterface.Model;
using System;
using System.Text;

namespace CycleGANInterface
{
    class Program
    {
        private static int timeout = 2000;

        static int Main(string[] args)
        {
            try
            {
                Console.WriteLine("Starting Interface");
                ArgumentParser parser = ParseArguments(args);

                Console.WriteLine("Starting CycleGAN instance");
                CycleGANProcess cycleGANProcess;
                parser.TryGetArgument("-o", out IArgument outputFolderArg);
                if (parser.TryGetArgument("-f", out IArgument inputPathArgument))
                    cycleGANProcess = StartCycleGANProcess(inputPathArgument, outputFolderArg);
                else if (parser.TryGetArgument("-b", out IArgument inputByteArgument))
                    cycleGANProcess = StartCycleGANProcess(inputByteArgument, outputFolderArg);
                else
                    throw new Exception("Could not start the cycleGAN process with current input and output arguments");

                Console.WriteLine("Waiting for CycleGAN results");
                if (cycleGANProcess == null || !cycleGANProcess.WaitBlocking(timeout))
                    throw new Exception("Could not complete the cycleGAN process");
                if(cycleGANProcess.ExitCode == -1)
                    throw new Exception("Error in cycleGAN process");

                Console.WriteLine("Fetching CycleGAN results");
                Console.WriteLine("Interface functions completed");
                return 1;
                //Start the cyclegan process, then wait for it to finish, then get the result
            } catch (Exception ex)
            {
                Console.WriteLine(" " + ex.Message + " - Operation suspended");
                return -1;
            }
        }

        private static ArgumentParser ParseArguments (string[] args)
        {
            ArgumentParser parser = new ArgumentParser(args);


            if (parser.TryGetArgument("-o", out IArgument outputFolderArg)
                && outputFolderArg is PathArgument)
                Console.WriteLine($" Output folder is: {(outputFolderArg as PathArgument).RawValue}");
            if (parser.TryGetArgument("-f", out IArgument inputPathArgument)
                && inputPathArgument is PathArgument)
                Console.WriteLine($" Input is: {(inputPathArgument as PathArgument).RawValue}");
            if (parser.TryGetArgument("-b", out IArgument inputByteArgument)
                && inputByteArgument is ByteArrayArgument)
                Console.WriteLine($" Input is: {(inputByteArgument as ByteArrayArgument).Value}");

            return parser;
        }

        private static CycleGANProcess StartCycleGANProcess (IArgument input, IArgument output)
        {
            StringBuilder argumentBuilder = new StringBuilder();
            argumentBuilder.Append(input.Argument);
            if (input is PathArgument)
                argumentBuilder.Append($" {(input as PathArgument).Value.AbsolutePath}");
            else if (input is ByteArrayArgument)
                argumentBuilder.Append($" BYTEARRAY");

            argumentBuilder.Append($" {output.Argument} {(output as PathArgument).Value.AbsolutePath}");

            CycleGANProcess process = new CycleGANProcess();
            if (!process.Start(argumentBuilder.ToString()))
                throw new Exception("Could not start the cycleGANProcess");

            Console.WriteLine($" CycleGAN process started with id: {process.ProcessId}");
            return process;
        }
    }
}
