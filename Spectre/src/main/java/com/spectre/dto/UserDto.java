package com.spectre.dto;

public class UserDto {
	private int uid;
	private String fullName;
	private int age;
	private String gender;
	private String username;
	private String password;
   
	
	public UserDto() {

	}

	public UserDto(String fullName, int age, String gender, String username, String password) {

		
		this.fullName = fullName;
		this.age = age;
		this.gender = gender;
		this.username = username;
		this.password = password;
	
	}


	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
