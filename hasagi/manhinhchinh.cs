using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Configuration;

namespace Hasagi
{
    public partial class manhinhchinh : Form
    {
        
        public manhinhchinh()
        {
            InitializeComponent();
        }
        public static string UserName { get; set; }
        private void manhinhchinh_Load(object sender, EventArgs e)
        {


            lbdatetime.Text = "Ngày " + DateTime.Now.ToString(" dd") + " Tháng " + DateTime.Now.ToString("mm") + " Năm " + DateTime.Now.ToString("yyyy");
            lbadmin.Text ="Xin chào "+ UserName;
            
        }

       
        private void panel4_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }



        private void panel1_Click(object sender, EventArgs e)
        {
            this.Hide();
            danhsachphong dsp = new danhsachphong();
            dsp.Show();
        }

        private void t2_Tick(object sender, EventArgs e)
        {
            lbtime2.Text = DateTime.Now.Minute.ToString() ;
        }

        private void t3_Tick(object sender, EventArgs e)
        {
            lbtime3.Text = DateTime.Now.Hour.ToString() + " :";
        }

        private void panel2_Click(object sender, EventArgs e)
        {
            
            if (UserName == "admin")
            {
                this.Hide();
                Camera cr = new Camera();
                cr.Show();
               
            }
            else { MessageBox.Show("Bạn không có quyền truy cập"); }

            }

        private void panel1_MouseHover(object sender, EventArgs e)
        {
            Label lb = new Label();
            lb.Text = "abc";
            lb.Show();


        }

        
       
       

      

       

       
    }
}
