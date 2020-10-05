package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class memberDAO {

	PreparedStatement psmt;
	Connection conn;
	int cnt = 0;
	ResultSet rs;
	String name = null;

	// 메서드 생성
	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String db_url = "jdbc:oracle:thin:@smhrdai.cunegl97a26d.us-east-2.rds.amazonaws.com:1521:ORCL";
			String db_id = "smhrd";
			String db_pw = "aorwntkfkd1!";

			conn = DriverManager.getConnection(db_url, db_id, db_pw);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	// 메서드 생성
	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 회원 회원가입
	public int join(memberVO vo) {

		conn();

		try {
			String sql = "insert into member values(?,?,?,?,?,?)";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, vo.getMember_name());
			psmt.setString(2, vo.getMember_id());
			psmt.setString(3, vo.getMember_pw());
			psmt.setInt(4, vo.getMember_tel());
			psmt.setString(5, vo.getMember_addr());
			psmt.setInt(6, vo.getMember_post());

			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	// 회원 로그인
	public String login(memberVO vo) {

		conn();
		try {
			String sql = "select * from member where member_id = ? and member_pw = ?";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, vo.getMember_id());
			psmt.setString(2, vo.getMember_pw());
			
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				name = rs.getString("member_name");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return name;
	}
}
