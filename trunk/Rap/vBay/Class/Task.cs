using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Timers;
using System.Threading;

namespace vBay
{
    /// <summary>
    /// Create by Keyvan Nayyeri (http://www.nayyeri.net/how-to-build-a-task-scheduler-system-for-the-asp-net-part-1)
    /// Modify by Minh Khanh Tran
    /// </summary>
    public class Task
    {
        #region Fields
        System.Timers.Timer timer = null;
        #endregion

        #region Properties
        public string Name { get; set; }
        public bool IsRunning { get; set; }
        public DateTime LastRunTime { get; set; }
        public bool IsLastRunSuccessful { get; set; }
        public double Interval { get; set; }
        public bool Stopped { get; set; }
        public string FilePath { get; set; }
        #endregion

        #region Public Constructors
        public Task(double interval)
        {
            this.Interval = interval;
            Initialize();
        }
        #endregion

        #region Public Methods
        public void Start()
        {
            this.Stopped = false;
            this.StartTask();
        }
        public void Stop()
        {
            this.Stopped = true;
        }
        #endregion

        #region Private Methods
        private void Initialize()
        {
            this.Stopped = false;
            timer = new System.Timers.Timer(this.Interval);
            timer.Elapsed += new ElapsedEventHandler(timer_Elapsed);
            timer.Enabled = true;
        }
        private void StartTask()
        {
            if (!this.Stopped)
            {
                Thread thread = new Thread(new ThreadStart(Execute));
                thread.Start();
            }
        }
        private void Execute()
        {
            try
            {
                this.IsRunning = true;
                this.LastRunTime = DateTime.Now;
                //File.AppendAllText(this.FilePath, DateTime.UtcNow.ToString() + "\n");
                this.IsLastRunSuccessful = true;
            }
            catch
            {
                this.IsLastRunSuccessful = false;
                // Handle the exception
            }
            finally
            {
                this.IsRunning = false;
            }
        }
        void timer_Elapsed(object sender, ElapsedEventArgs e)
        {
            if (!this.IsRunning)
                StartTask();
        }
        #endregion
    }
}