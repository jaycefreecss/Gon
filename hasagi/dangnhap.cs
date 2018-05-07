using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Configuration;

namespace Hasagi
{
    public partial class dangnhap : Form
    {

        SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["LOGIN"].ConnectionString);

        public dangnhap()
        {
            InitializeComponent();
        }

        public static string UserName = "";

        private void btOK_Click(object sender, EventArgs e)
        {
            conn.Open();
            String sql = "select * from nguoidung where TenDN='" + txtdn.Text + "'  and MatKhau = '" + txtpass.Text + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read() == true)
            {

                manhinhchinh.UserName = txtdn.Text;
                manhinhchinh mhc = new manhinhchinh();
                mhc.Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("Tài khoản hoặc mật khẩu không đúng");

                txtdn.Text = "";
                txtpass.Text = "";
                txtdn.Focus();
            }

        }
      

    }
}

    
    


       
        