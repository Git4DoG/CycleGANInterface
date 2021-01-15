using System.Diagnostics;

namespace CycleGANInterface.Model
{
    public class CycleGANProcess
    {
        private Process Process { get; set; }
        public int ProcessId { get { return Process?.Id ?? 0; } }
        public int ExitCode { get { return Process?.HasExited == true ? Process.ExitCode : -1; } }

        public bool IsRunning ()
        {
            if (Process == null)
                return false;
            return !Process.HasExited;
        }

        public bool Start (string args)
        {
            if (IsRunning())
                Process.Kill(true);
            Process = Process.Start("D:\\Git\\CycleGANInterface\\MockCycleGAN\\bin\\Debug\\netcoreapp3.1\\MockCycleGAN.exe", args);
            return IsRunning();
        }

        public bool WaitBlocking (int timeout)
        {
            if (!IsRunning())
                return false;
            return Process.WaitForExit(timeout);
        }
    }
}
