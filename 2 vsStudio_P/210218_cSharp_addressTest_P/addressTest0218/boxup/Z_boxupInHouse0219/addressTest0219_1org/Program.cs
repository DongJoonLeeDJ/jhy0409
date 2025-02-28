﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Threading; // c/c++ : include - java : import - c# using 언어별 임포트

namespace addressTest0218
{
    class Program
    {
        const int MENU_ADD = 1;
        const int MENU_VIEW = 2;
        const int MENU_RANDOM_ADD = 3;
        const int MENU_DELETE = 4;
        const int MENU_DELETE_ALL = 5;
        const int MENU_EXIT = 6;

        static List<Student> addrList = new List<Student>();
        static Random r = new Random();

        static void Main(string[] args)
        {
            while (true)
            {
                switch (getMenu())
                {
                    case MENU_ADD:
                        addItem();
                        break;
                    case MENU_VIEW:
                        Console.WriteLine("정보 보기");
                        viewItem();
                        break;
                    case MENU_RANDOM_ADD:
                        Console.WriteLine("랜덤정보를 생성합니다.");
                        randData();
                        break;
                    case MENU_DELETE:
                        delItem();
                        break;
                    case MENU_DELETE_ALL:
                        delItemAll();
                        break;
                    case MENU_EXIT:
                        Console.WriteLine("프로그램 종료");
                        Environment.Exit(0);
                        break;
                }
            }
        }
        public static void randData()
        {
            string[] name = { "홍길동", "김길동", "박길동", "이길동", "최길동" };
            string[] tel = { "010-1111-1111", "010-2222-2222", "010-3333-3333", "010-4444-4444", "010-5555-5555" };
            string[] address = { "1 대구시 동구 신암4동", "2 서울시 동구 신암4동", "3 부산시 동구 신암4동", "4 인천시 동구 신암4동", "5 광주시 동구 신암4동" };
            string[] email = { "1_hong@test.com", "2_kim@test.com", "3Lee@test.com", "4Park@test.com", "5CHOI@test.com" };
            //Random r = new Random();
            for (int i = 0; i < 10; i++)
            {
                addrList.Add(new Student(getID(), name[r.Next(0, 5)], tel[r.Next(0, 5)], address[r.Next(0, 5)], email[r.Next(0, 5)]));
                //Thread.Sleep(50);
            }
        }

        public static void addItem()
        {
            Console.WriteLine("-----------------------------");
            Console.WriteLine("    1-2. 주소록 정보 입력");
            Console.WriteLine("-----------------------------");
            Console.Write(" 아이디: ");
            string id = Console.ReadLine();
            Console.Write(" 이름: ");
            string name = Console.ReadLine();
            Console.Write(" 전화: ");
            string tel = Console.ReadLine();
            Console.Write(" 주소: ");
            string address = Console.ReadLine();
            Console.Write(" 이메일: ");
            string email = Console.ReadLine();
            //List<Student> list = new List<Student>();
            addrList.Add(new Student(id, name, tel, address, email));
            Console.WriteLine("정보가 정상적으로 입력되었습니다.");
        }
        public static void viewItem()
        {
            for (int i = 0; i < addrList.Count; i++)
            {
                Console.WriteLine("\n### 번호: " + (i + 1) + "\n-----------------------------");
                Console.WriteLine("아이디: " + addrList[i].Id);
                Console.WriteLine("이름: " + addrList[i].Name);
                Console.WriteLine("전화: " + addrList[i].Tel);
                Console.WriteLine("주소: " + addrList[i].Address);
                Console.WriteLine("이메일: " + addrList[i].Email);
                Console.WriteLine("-----------------------------");
            }
        }


        public static int getMenu()
        {
            Console.WriteLine("-----------------------------");
            Console.WriteLine("    [메뉴] 주소록 관리");
            Console.WriteLine("-----------------------------");
            Console.WriteLine(" 1. 주소록 추가");
            Console.WriteLine(" 2. 주소록 보기");
            Console.WriteLine(" 3. 주소록 랜덤 추가");
            Console.WriteLine(" 4. 주소록 삭제");
            Console.WriteLine(" 5. 주소록 수정");
            Console.WriteLine(" 6. 주소록 전체 삭제");
            Console.WriteLine(" 7. 종료");
            Console.WriteLine("-----------------------------");
            Console.Write("메뉴 선택: ");
            int menu = Convert.ToInt32(Console.ReadLine());
            return menu;
            // MV(view, 웹)C / MVVM 모델 뷰~
        }

        public static void jusolokSujung()
        {
            Console.WriteLine("-----------------------------");
            Console.WriteLine("    [메뉴] 5-2 주소록 수정");
            Console.WriteLine("-----------------------------");
            Console.Write("1. 이름\t: ");
            Console.Write("2. 전화번호\t: ");
            Console.Write("3. 주소\t: ");
            Console.Write("4. 이메일\t: ");
            Console.WriteLine("-----------------------------");
            Console.Write("수정할 항목 : ");
            Console.Write("수정할 이름 : ");
            Console.Write("변경할 이름 : ");
            Console.WriteLine("-----------------------------");

        }

        static void delItem()
        {
            Console.WriteLine("-----------------------------");
            Console.WriteLine("주소록 정보 삭제");
            Console.WriteLine("-----------------------------");
            Console.Write("삭제할 이름 : ");
            string name = Console.ReadLine();
            Console.Write("삭제할 아이디 : ");
            string id = Console.ReadLine();

            for (int i = 0; i < addrList.Count; i++)
            {
                if (name.Equals(addrList[i].Name) && id.Equals(addrList[i].Id))
                {
                    //addrList.RemoveAt(i);
                    // i--;
                    addrList.RemoveAt(i--);
                }
            }


            /*int cnt = 0;
            while (cnt < addrList.Count)
            {
                if (name.Equals(addrList[cnt].Name))
                {
                    addrList.RemoveAt(cnt);
                }
                else
                {
                    cnt++;
                }
            }*/

            /*
             자료구조 : DB엔진 

            (검색삭제 빨리되게 연구)
            알고리즘 공부할 때
             */
        }


        static void delItemAll()
        {
            Console.WriteLine("전체 삭제됨");
            addrList.Clear();
        }



        static string getID()
        {
            //Random r = new Random();
            string rdata = /*"adbcdefghijklmnopqrstuvwxyz" +*/
                "0123456789" /*+
                "ABCDEFGHIJKLMNPQRSTUVWXYZ" +
                "~!@#$%^&*?"*/;
            StringBuilder rs = new StringBuilder();
            for (int i = 0; i < 4; i++)
            {
                rs.Append(rdata[(int)(r.NextDouble() * rdata.Length)]);
            }
            //Console.WriteLine("id: " + rs.ToString());
            return rs.ToString();
        }//sql auto increase, oracle sequence
    }
}
/*
 * 안드로이드(모듈) 컴포넌트
 * 자바 : swing   (design + code),    javaFx(애플리케이션)  (design | code)
 * c#   : winform (design + code),    WPF                   (design | code)
 * 
 * [디자인 패턴]
 * MVC Model(클래스) (뷰) (컨트롤),    웹
 * MVP P(present..)
 * MVVM
 * 
 * SINGLETONE
 */