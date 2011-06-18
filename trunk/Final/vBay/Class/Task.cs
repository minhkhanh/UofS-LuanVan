using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Timers;
using System.Threading;
using System.Configuration;
using System.Net.Configuration;
using System.Web.Configuration;
using System.Net.Mail;
using System.Net;

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

                DataEntityDataContext dt = new DataEntityDataContext();

                foreach (SanPham i in dt.SanPhams)
                {
                    if (i.NgayHetHan.Value.CompareTo(DateTime.Now) <= 0
                        && i.MaTinhTrangSanPham == 2)
                        if (i.ChiTietDauGias.Count != 0)
                        {
                            i.TinhTrangSanPham = dt.TinhTrangSanPhams.Single(u => u.MaTinhTrangSanPham == 3);

                            ChiTietDauGia winUser = new ChiTietDauGia();
                            winUser.GiaGiaoDich = -1;
                            foreach (ChiTietDauGia j in i.ChiTietDauGias)
                            {
                                if (j.GiaGiaoDich > winUser.GiaGiaoDich)
                                    winUser = j;
                            }

                            if (winUser.GiaGiaoDich == -1)
                                return;

                            // gui mail cho tmp.user

                            //Configuration config = WebConfigurationManager.OpenWebConfiguration(HttpContext.Current.Request.ApplicationPath);

                            //MailSettingsSectionGroup settings = (MailSettingsSectionGroup)config.GetSectionGroup("system.net/mailSettings");

                            try
                            {
                                SmtpClient smtpSender = new SmtpClient("192.168.137.12", 25);
                                smtpSender.DeliveryMethod = SmtpDeliveryMethod.Network;
                                smtpSender.Credentials = new NetworkCredential("akhoi90", "asdasd");
                                //smtpSender.EnableSsl = true;

                                string message = "Chúc mừng bạn vừa sở hữu được một món hàng từ vBay.\n" + "Mời bạn vào link sau để xác nhận:\n";

                                MailMessage mailMess = new MailMessage("akhoi90@company.mail", winUser.aspnet_User.aspnet_Membership.Email, "vBay - Đấu giá thành công", message);

                                smtpSender.Send(mailMess);
                            }
                            catch (Exception ex)
                            {
                                //Response.Write("There was a problem sending the email. " + ex);
                            }
                        }
                        else    // khong ai mua
                        {
                            i.TinhTrangSanPham = dt.TinhTrangSanPhams.Single(u => u.MaTinhTrangSanPham == 4);
                        }

                    dt.SubmitChanges();
                }
            }
            catch (Exception ex)
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