using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Text;
using Xunit;
using Xunit.Abstractions;

namespace TestCycleGANSpeed
{
    public class SpeedTest
    {
        //private readonly string cycleGANPath = Path.GetFullPath("D:\\Git\\CycleGANInterface\\CycleGANInterface\\bin\\Debug\\netcoreapp3.1\\CycleGANInterface.exe");
        private readonly string cycleGANPath = Path.GetFullPath("CycleGAN/CycleGANInterface.exe");
        private readonly int timeout = 20000;
        private readonly ITestOutputHelper output;

        public SpeedTest (ITestOutputHelper outputHelper)
        {
            output = outputHelper;
        }

        [Fact]
        public void TestSingleSpeed ()
        {
            string input = Path.GetFullPath("TestFolder/Input/InputFile.png");
            string outputFolder = Path.GetFullPath("TestFolder/Output");

            Process proc = new Process();
            proc.StartInfo.FileName = cycleGANPath;
            proc.StartInfo.Arguments = $"-f {input} -o {outputFolder}";
            proc.Start();

            bool exited = proc.WaitForExit(timeout);
            if (!exited)
                proc.Kill();
            Assert.True(exited); //If timeout has passed, stop the test, it's not worth it.
            Assert.Equal(1, proc.ExitCode);

            TimeSpan duration = proc.ExitTime - proc.StartTime;
            output.WriteLine($"Processing took: {duration.TotalMilliseconds} ms");
        }

        [Fact]
        public void TestBatchSpeed()
        {
            string input = Path.GetFullPath("TestFolder/Input");
            string outputFolder = Path.GetFullPath("TestFolder/Output");

            Process proc = new Process();
            proc.StartInfo.FileName = cycleGANPath;
            proc.StartInfo.Arguments = $"-f {input} -o {outputFolder}";
            proc.Start();

            bool exited = proc.WaitForExit(timeout);
            if (!exited)
                proc.Kill();
            Assert.True(exited); //If timeout has passed, stop the test, it's not worth it.
            Assert.Equal(1, proc.ExitCode);

            TimeSpan duration = proc.ExitTime - proc.StartTime;
            output.WriteLine($"Processing took: {duration.TotalMilliseconds} ms");
        }

    }
}
