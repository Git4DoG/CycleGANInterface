using MockFotohokje.Model;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Timers;
using System.Threading.Tasks;
using System.IO;

namespace MockFotohokje.Services
{
    public class CycleGANInterfaceController
    {
        private Dictionary<int, CycleGANProcess> currentProcesses;
        private readonly CycleGANResultsController resultsController;

        private readonly int timeout = 20000;
        private readonly Uri outputFolder = new Uri(Path.GetFullPath("wwwroot/Results"));
        private readonly string cycleGANPath = "D:\\Git\\CycleGANInterface\\CycleGANInterface\\bin\\Debug\\netcoreapp3.1\\CycleGANInterface.exe";

        public CycleGANInterfaceController (CycleGANResultsController results)
        {
            currentProcesses = new Dictionary<int, CycleGANProcess>();
            resultsController = results;
        }

        public void StartInterfaceSingle (Uri path)
        {
            //Start a process of the interface
            //Await it's result (i.e. wait for the program exit to be raised, or waitExit on separate thread)
            Guid processGuid = resultsController.GetNewGuid();
            string output = $"{Uri.UnescapeDataString(outputFolder.AbsolutePath)}/{processGuid}";
            Process cycleGAN = StartInterface(path, new Uri(output));
            currentProcesses.Add(cycleGAN.Id, new CycleGANProcess(cycleGAN, new Uri(output), ProcessType.Single)) ;
            AwaitResult(cycleGAN);
        }

        public void StartInterfaceSingle (Uri path, Uri outputFolder)
        {
            //Start a process of the interface
            //Await it's result (i.e. wait for the program exit to be raised, or waitExit on separate thread)
            Process cycleGAN = StartInterface(path, outputFolder);
            currentProcesses.Add(cycleGAN.Id, new CycleGANProcess(cycleGAN, outputFolder, ProcessType.Single));
            AwaitResult(cycleGAN);
        }

        public void StartInterfaceBatch (Uri folder)
        {
            //Start a process of the interface
            //Await it's result (i.e. wait for the program exit to be raised, or waitExit on separate thread)
            Guid processGuid = resultsController.GetNewGuid();
            string output = $"{Uri.UnescapeDataString(outputFolder.AbsolutePath)}/{processGuid}";
            Process cycleGAN = StartInterface(folder, new Uri(output));
            currentProcesses.Add(cycleGAN.Id, new CycleGANProcess(cycleGAN, new Uri(output), ProcessType.Batch));
            AwaitResult(cycleGAN);
        }

        public void StartInterfaceBatch (Uri folder, Uri outputFolder)
        {
            //Start a process of the interface
            //Await it's result (i.e. wait for the program exit to be raised, or waitExit on separate thread)
            Process cycleGAN = StartInterface(folder, outputFolder);
            currentProcesses.Add(cycleGAN.Id, new CycleGANProcess(cycleGAN, outputFolder, ProcessType.Batch));
            AwaitResult(cycleGAN);
        }

        private Process StartInterface (Uri path, Uri outputFolder)
        {
            string args = "-o " + Uri.UnescapeDataString(outputFolder.AbsolutePath) + " -f \"" + Uri.UnescapeDataString(path.AbsolutePath) + "\"";
            Process cycleGAN = Process.Start(cycleGANPath, args);
            Console.WriteLine($"Started CycleGAN inteface with id {cycleGAN.Id}");
            return cycleGAN;
        }

        private void AwaitResult (Process cycleGAN)
        {
            Console.WriteLine("Awaiting results");
            cycleGAN.EnableRaisingEvents = true;
            cycleGAN.Exited += (sender, e) => OnCycleGANProcessExit(cycleGAN.Id);
            //Set the timeout and what happens then
            Timer t = new Timer(timeout);
            t.Elapsed += (sender, e) => OnCycleGANProcessTimeout(cycleGAN.Id);
            t.AutoReset = false;
            t.Enabled = true;
        }

        private void OnCycleGANProcessTimeout(int cycleGANId)
        {
            if (!currentProcesses.ContainsKey(cycleGANId)) //Never existed or already completed
                return;
            Console.WriteLine($"Timeout reached for {cycleGANId}");
            CycleGANProcess cycleGAN = currentProcesses[cycleGANId];
            currentProcesses.Remove(cycleGANId); //Kill and Remove
            cycleGAN.Process.Kill();
        }

        private void OnCycleGANProcessExit(int cycleGANId)
        {
            if (!currentProcesses.ContainsKey(cycleGANId)) //process has been removed due to timeout or previous completion or it was never added
                return;
            Console.WriteLine($"Exit reached for {cycleGANId}");
            CycleGANProcess cycleGAN = currentProcesses[cycleGANId];
            currentProcesses.Remove(cycleGANId);
            cycleGAN.Process = null;
            AddResult(cycleGAN);
        }

        private void AddResult (CycleGANProcess cycleGAN)
        {
            switch (cycleGAN.CycleGANType)
            {
                case ProcessType.Single:
                    resultsController.AddResult(new CycleGANSingleResult { ImagePath = cycleGAN.OutputFolder });
                    break;
                case ProcessType.Batch:
                    resultsController.AddResult(new CycleGANBatchResult { FolderPath = cycleGAN.OutputFolder });
                    break;
            }
        }
    }
}
