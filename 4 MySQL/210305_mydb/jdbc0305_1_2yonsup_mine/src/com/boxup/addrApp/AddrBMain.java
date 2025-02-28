package com.boxup.addrApp;

import java.util.Scanner;

import com.boxup.addrApp.dao.MySQLHandler;
import com.boxup.addrApp.util.Menu;
import com.boxup.addrApp.util.RandData;

public class AddrBMain {

	public static void main(String[] args) {
		MySQLHandler db = new MySQLHandler();
		Menu me = new Menu();
		Scanner s = new Scanner(System.in);

		while (true) {
			switch (me.mainMenu(s)) {
			case Menu.CREATE_TABLE:			// 1. 테이블 생성
				db.createTB();
				break;
			case Menu.DEL_TABLE:			// 2. 테이블 삭제
				db.dropTb();
				break;
			case Menu.INSERT_DATA:			// 3. 데이터 추가
				db.insertDB(me.addMenu(s));
				break;
			case Menu.INSERT_RAND_DATA:		// 4. 랜덤 데이터 추가
				RandData data = new RandData();
				
				for (int i = 0; i < 7; i++) {
					db.insertDB(data.getABook());
				}
				break;
			case Menu.VIEW_DATA:			// 5. 데이터 보기
				db.showDB();
				break;

			case Menu.UPDATE_DATA:			// 6. 데이터 수정
				db.updData(me.sujung(s));
				break;
			case Menu.DEL_DATA:				// 7. 데이터 삭제
				db.delData(me.delData(s));
				break;
			case Menu.MAIN_EXIT:			// 8. 종료
				db.closeDB();
				s.close();
				System.out.println("프로그램 종료");
				System.exit(0);
				break;

			}
		}
	}

}
