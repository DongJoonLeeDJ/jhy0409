package com.lg.addrApp.model;

public class AddrBook {
	String name; // private 안 써도 됨 패키지 분리돼있어서
	int age;
	String tel;
	String address;
	String email;
	
	public AddrBook(String name, int age, String tel, String address, String email) {
		super(); // 최상위 오브젝트 클래스 생성자, 컴파일러가 상속받은거 표기
		this.name = name;
		this.age = age;
		this.tel = tel;
		this.address = address;
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
