package com.org.covid;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		try {
			Class.forName(DBinfo.mysql_class);
			conn=DriverManager.getConnection(DBinfo.mysql_url,DBinfo.mysql_id,DBinfo.mysql_pw);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public int login(String id, String pw) {
		try {
			pstmt=conn.prepareStatement("select * from user where pw= ?");
			//pstmt.setString(1, id);
			pstmt.setString(1, pw);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				if(rs.getString(1).equals(pw)) {
					return 1; //로그인 성공
				}else {
					return 0; //비밀번호 틀림
				}
			}
			return -1; //아이디가 없음
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2; //오류
	}

}
