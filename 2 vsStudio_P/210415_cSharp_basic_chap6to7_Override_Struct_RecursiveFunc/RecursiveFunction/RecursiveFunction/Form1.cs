﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int.TryParse(textBox1.Text, out int num);
            MessageBox.Show("1부터 " + num + "까지의 합은 " + sum(num) + "이다.");
            MessageBox.Show("1부터 " + num + "까지의 팩토리얼은 " + gob(num) + "이다.");
        }

        private int sum(int end)
        {
            if (end <= 0)
                return 0;
            return end + sum(end - 1);
        }

        private int gob(int end)
        {
            if (end == 1)
                return 1;
            return end * gob(end - 1);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            int.TryParse(textBox1.Text, out int a);
            MessageBox.Show(Pb(a) + "");
        }

        private int Pb(int n)
        {
            if (n <= 0) { return 0; }
            if (n == 1) { return 1; }
            return Pb(n - 1) + Pb(n - 2);
        }
    }
}
