package com.spectre.model;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.print.DocFlavor.INPUT_STREAM;

import com.spectre.dto.UserDto;

public class UserDao {
	public static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	public static final String URL = "jdbc:mysql://localhost:3306/";
	public static final String  DB_NAME= "spectre";
	public static final String USERNAME = "root";
	public static final String PASSWORD = "hackerL123";
	
	public static Connection makeCon() {
		Connection con = null;
		try {
			Class.forName(DRIVER);
			con = DriverManager.getConnection(URL+DB_NAME,USERNAME,PASSWORD);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return con;
		
	}
	public int checkLogin(String uname, String pass) {
		int i = 0;
		
		Connection con = null;
		con = makeCon();
		try {
			PreparedStatement ps = con.prepareStatement("select * from userlogin where username = ? and password = ?");
			ps.setString(1, uname);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				i = 1;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return i;
	}

	public int insertRecord(UserDto ud,InputStream istr) {
		int i = 0;
		Connection con = null;
		con = makeCon();
		try {
			PreparedStatement ps = con.prepareStatement("insert into userlogin(fullname,age,username,password,gender,avatar)values(?,?,?,?,?,?)");
			ps.setString(1, ud.getFullName());
			ps.setInt(2, ud.getAge() );
			ps.setString(3, ud.getUsername());
			ps.setString(4, ud.getPassword());
			ps.setString(5, ud.getGender());
			ps.setBlob(6, istr);
			 i = ps.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}
	public ArrayList<UserDto> getDetails() {
		ArrayList<UserDto> al = new ArrayList<UserDto>();
		Connection con = null;
		con = makeCon();
		try {
			PreparedStatement ps = con.prepareStatement("select * from userlogin");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				UserDto ud = new UserDto(rs.getString("fullname"), rs.getInt("age"), rs.getString("gender"), rs.getString("username"),rs.getString("password"));
				ud.setUid(rs.getInt("uid"));
				al.add(ud);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return al;
	}
	public int deleteRecord(int id) {
		int i = 0;
		Connection con = null;
		try {
			con = makeCon();
			PreparedStatement ps = con.prepareStatement("delete from userlogin where uid = ?");
			ps.setInt(1, id);
			 i = ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return i;
	}
	public UserDto getUserDetails(int id) {
		UserDto us = null;
		Connection con = null;
		try {
			con = makeCon();
			PreparedStatement ps = con.prepareStatement("select * from userlogin where uid=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				us = new UserDto(rs.getString("fullname"),rs.getInt("age"),rs.getString("gender"),rs.getString("username"),rs.getString("password"));
				us.setUid(rs.getInt("uid"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return us;
	}
	public int getUpdate(UserDto us) {
		int i = 0;
		Connection con = null;
		try {
			con = makeCon();
			PreparedStatement ps = con.prepareStatement("update userlogin set fullname=?,age=?,gender=?,username=?,password=? where uid=?");
			ps.setString(1, us.getFullName());
			ps.setInt(2, us.getAge());
			ps.setString(3, us.getGender());
			ps.setString(4, us.getUsername());
			ps.setString(5, us.getPassword());
			ps.setInt(6, us.getUid());
			i = ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return i;
	}
	public byte[] getphoto(int id) {
		byte[] photo=null;
		Connection con = null;
		try {
			con = makeCon();
			PreparedStatement ps = con.prepareStatement("select * from userlogin where uid = ?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				photo = rs.getBytes("avatar");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return photo;
	}
}
