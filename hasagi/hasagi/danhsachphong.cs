using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Hasagi
{
    public partial class danhsachphong : Form
    {
        public danhsachphong()
        {
            InitializeComponent();
        }
        public static string UserName {get; set;}

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Hide();
            manhinhchinh mhc = new manhinhchinh();
            mhc.Show();
        }

        private void panel5_Click(object sender, EventArgs e)
        {
            if (manhinhchinh.UserName == "admin")
            {
                this.Hide();
                phongbome bome  = new phongbome();
                bome.Show();

            }
            else { 
                MessageBox.Show("Bạn không có quyền truy cập"); 
            }
        }

        private void panel6_Click(object sender, EventArgs e)
        {
            if (manhinhchinh.UserName == "admin")
            {
                this.Hide();
                phongbome bome = new phongbome();
                bome.Show();

            }
            else
            {
                MessageBox.Show("Bạn không có quyền truy cập");
            }
        }

        private void danhsachphong_Load(object sender, EventArgs e)
        {

        }
    }
}
