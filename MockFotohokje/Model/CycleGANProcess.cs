using System;
using System.Diagnostics;

namespace MockFotohokje.Model
{
    public enum ProcessType { Single, Batch }
    public class CycleGANProcess
    {
        public Process Process { get; set; }
        public Uri OutputFolder { get; set; }
        public ProcessType CycleGANType { get; set; }

        public CycleGANProcess (Process process, Uri outputFolder, ProcessType type)
        {
            Process = process;
            OutputFolder = outputFolder;
            CycleGANType = type;
        }
    }
}
