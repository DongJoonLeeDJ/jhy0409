package com.lg.addrApp.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Scanner;

import com.lg.addrApp.model.AddrBook;

public class Menu {
	public static final int CREATE_TABLE = 1;
	public static final int DEL_TABLE = 2;
	public static final int INSERT_DATA = 3;
	public static final int INSERT_RAND_DATA = 4;
	public static final int VIEW_DATA = 5;

	public static final int UPDATE_DATA = 6;
	public static final int DEL_DATA = 7;
	public static final int MAIN_EXIT = 8;

	public int mainMenu(Scanner s) {
		System.out.println("----------------------");
		System.out.println("  MySQL DB 관리 v1.0");
		System.out.println("----------------------");
		System.out.println("1. 테이블 생성");
		System.out.println("2. 테이블 삭제");
		System.out.println("3. 데이터 추가");
		System.out.println("4. 랜덤 데이터 추가");
		System.out.println("5. 데이터 보기\n");
		System.out.println("6. 데이터 수정");
		System.out.println("7. 데이터 삭제");
		System.out.println("8. 종료");
		System.out.println("----------------------");

		System.out.print("메인 메뉴 선택 : ");
		return s.nextInt();
	}

	public AddrBook addMenu(Scanner s) { // present 구조
		System.out.println("----------------------");
		System.out.println("     데이터 추가 메뉴");
		System.out.println("----------------------");
		System.out.print(" 이름 : ");
		String name = s.next();
		System.out.print(" 나이 : ");
		int age = s.nextInt();
		System.out.print(" 전화 : ");
		String tel = s.next();
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		System.out.print(" 주소 : ");
		String address = null;
		try {
			address = br.readLine();
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.print(" 메일 : ");
		String email = s.next();
		return new AddrBook(name, age, tel, address, email);
	}
}
