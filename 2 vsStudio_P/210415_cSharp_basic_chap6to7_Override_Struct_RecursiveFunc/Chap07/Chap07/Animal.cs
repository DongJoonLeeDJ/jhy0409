﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Chap07
{
    class Animal
    {
        public string name { get; set; }
        public int age { get; set; }
        public string breedName { get; set; }


        // 오버라이딩
        public virtual void Fight()
        {
            System.Windows.Forms.MessageBox.Show("퍽퍽");
        }

        public void Eat()
        {
            System.Windows.Forms.MessageBox.Show("냠냠");
        }

        public override string ToString()
        {
            return "내 주인의 이름은 " + name + "이고, 내 나이는 " + age + "살";
        }
    }
}
