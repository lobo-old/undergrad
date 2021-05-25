using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Net;

namespace webClientTest
{
    public partial class Form1 : Form
    {
        WebClient wclient;        

        public Form1()
        {
            InitializeComponent();
            wclient = new WebClient();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            //string URI = "https://api.wit.ai/message";
            //wclient.Headers[HttpRequestHeader.Authorization] = "Bearer WCKAJJVRAJPSUGGURT7NFZQDJMLKR4FX";
            //Console.WriteLine(wclient.DownloadString(URI));


            Console.WriteLine(wclient.DownloadString("https://www.google.com.br/?gfe_rd=cr&ei=oEVvVfaxJeKp8we6n4HABA&gws_rd=ssl#q=lua"));
        }
    }
}
