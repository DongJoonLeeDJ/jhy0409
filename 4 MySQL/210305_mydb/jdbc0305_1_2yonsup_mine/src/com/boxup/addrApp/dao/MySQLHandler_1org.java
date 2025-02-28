package com.boxup.addrApp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.boxup.addrApp.model.AddrBook;

public class MySQLHandler_1org {
	Connection con;
	Statement state;
	final String USER_ID = "root";
	final String USER_PW = "1126";
	final String DBNAME = "swup_mydb_210304";

	String jdbcDriver = "com.mysql.cj.jdbc.Driver";
	String dbUrl = "jdbc:mysql://localhost/" + DBNAME + "?validationQuery=select 1" + "&serverTimezone=UTC"; // 127.0.0.1

	public MySQLHandler_1org() {
		connectDB();
	}

	public void connectDB() {
		try {
			Class.forName(jdbcDriver);
			con = DriverManager.getConnection(dbUrl, USER_ID, USER_PW);

			if (con != null) {
				state = con.createStatement();
				System.out.println("DB 접속 성공");
				// System.out.println(con);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void closeDB() {
		try {
			state.close();
			con.close();
			System.out.println("DB 접속 해제");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void createTB() { // 무결성 == 정확한 값
		String query = "create table AddrBook (" + "id INT(10) NOT NULL AUTO_INCREMENT," + "name VARCHAR(10) NOT NULL, "
				+ "age INT(3) NOT NULL, " + "tel VARCHAR(20) NOT NULL," + "address VARCHAR(40) NOT NULL, "
				+ "email VARCHAR(30) NULL," + "date DATETIME NOT NULL," + "PRIMARY KEY(id))";

		try {
			state.executeUpdate(query);
		} catch (SQLException e) {
			/*
			 * System.out.println(e.getSQLState()); System.out.println(e.getMessage());
			 * System.out.println(e.getErrorCode());
			 * System.out.println(e.getCause().toString());
			 */

			/*
			 * if (e.getErrorCode() == 1050) { System.out.println("테이블이 이미 존재함"); //
			 * System.out.println(e.getMessage()); }
			 */
			checkErr(e);
		}
	}

	public void dropTb() {
		String query = "drop table AddrBook";

		try {
			state.executeUpdate(query);
		} catch (SQLException e) {
			checkErr(e);
		}
	}

	public void checkErr(SQLException e) {
		switch (e.getErrorCode()) {
		case 1050:
			System.out.println("테이블이 이미 존재함");
			break;

		case 1051:
			System.out.println("삭제할 테이블이 존재하지 않음");
			break;
		}
	}

	public void insertDB(AddrBook ab) {
		String query2 = String.format(
				"insert into addrbook(name, age, " + "tel, address, email, date)"
						+ " values('%s', %d, '%s','%s','%s',now())",
				ab.getName(), ab.getAge(), ab.getTel(), ab.getAddress(), ab.getEmail());
		try {
			state.executeUpdate(query2);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void showDB() {
		String query = "select * from addrbook";
		try {
			ResultSet rs = state.executeQuery(query);

			if (rs != null) {
				rs = state.getResultSet();
				int n = 0;
				while (rs.next()) {
					System.out.print(n + "\t");
					System.out.print(rs.getString("id") + "\t");
					System.out.print(rs.getString("name") + "\t");
					System.out.print(rs.getString("age") + "\t");
					System.out.print(rs.getString("tel") + "\t");
					System.out.print(rs.getString("address") + "\t");
					System.out.print(rs.getString("email") + "\t");
					System.out.println(rs.getString(7));
				}
				rs.close();
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public void updData(String[] irum) {
		StringBuilder sb = new StringBuilder();

		// 1번째 수정할, 2번째 수정이름
		// 0아이디 같으면

		int idNum = Integer.parseInt(irum[0]); // 검색할 아이디
		String name1 = "5";
		int age = 0 ;
		String tel = "5";
		String Adrr = "5";
		String email = "5";
		
		if(!irum[1].equals("+")) {name1 = irum[1];} // 이름
		if(!irum[2].equals("+")) {age = Integer.parseInt(irum[2]);} // 나이
		if(!irum[3].equals("+")) {tel = irum[3];} // 전화
		if(!irum[4].equals("+")) {Adrr = irum[4];} // 주소
		if(!irum[5].equals("+")) {email = irum[5];} // 메일
		
		//if(!irum[5].trim().isEmpty()) {email = irum[5];} // 메일
		
		String query = sb.append("update addrbook set")
				.append(" name = '"+name1+"', ")
				.append(" age = "+age+", ")
				.append(" tel = '"+tel+"', ")
				.append(" address = '"+Adrr+"', ")
				.append(" email = '"+email+"'")
				.append(" where id = ")
				.append(idNum)
				.append(";")
				.toString();
		
		/*
		 * String query2 = "update addrbook set name = '" + irum[1] +
		 * "', age = 10, tel = '010-9999-0009', address = '주주주소 만촌동', email = 'emdkjf@naver.com' "
		 * + "where id = '" + idNum + "'";
		 */

		try {
			state.executeUpdate(query);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void delData(int[] idNum) {
		if (!(idNum[0] == 1 || idNum[0] == 2)) {
			System.out.println("\n\n!!잘못된 입력");
			return;
		}
		if (idNum[0] == 1) {
			String query = "delete from addrbook " + "where id = " + idNum[1] + "";
			try {
				state.executeUpdate(query);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else if (idNum[0] == 2) {
			if (idNum[2] > idNum[3]) {
				System.out.println("시작 인덱스가 큽니다.");
				return;
			}

			String query = "delete from addrbook " + "where id between " + idNum[2] + " and " + idNum[3];
			try {
				state.executeUpdate(query);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
