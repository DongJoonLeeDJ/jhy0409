﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Chap07
{
    class Cat
    {
        public string name { get; set; }
        public int age { get; set; }
        public string breedName { get; set; }
        public string slaveName { get; set; }


        public void Eat()
        {
            System.Windows.Forms.MessageBox.Show("냠냠");
        }

        public void Meow()
        {
            System.Windows.Forms.MessageBox.Show("야옹");
        }
    }
}
