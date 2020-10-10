package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import jdk.nashorn.internal.ir.RuntimeNode.Request;


public class surveyDAO {
	
	PreparedStatement psmt;
	Connection conn;
	int cnt = 0;
	ResultSet rs;
	surveyVO vo = null;

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
		
		// db에 id, survey값 입력 
		public int surveyInsert(String id , String gender, String fatigue, String con, String insomnia, String flu, String inf, String adult, String diet, String dig, String stress, String drunk, String hair, String smoke) {
			
			conn();
			
			System.out.println(id);
			try {
				
				String sql = "insert into survey values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

				psmt = conn.prepareStatement(sql);
				psmt.setString(1, id);
				psmt.setString(2, gender);
				psmt.setString(3, fatigue);
				psmt.setString(4, con);
				psmt.setString(5, insomnia);
				psmt.setString(6, flu);
				psmt.setString(7, inf);
				psmt.setString(8, adult);
				psmt.setString(9, diet);
				psmt.setString(10, dig);
				psmt.setString(11, stress);
				psmt.setString(12, drunk);
				psmt.setString(13, hair);
				psmt.setString(14, smoke);
				
				cnt = psmt.executeUpdate();
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			
			return cnt;
			
		}
			
		public ArrayList<surveyVO> select() {
			ArrayList<surveyVO> list = new ArrayList<surveyVO>();
			conn();
			
			String sql = "select * from survey";
			
			try {
				psmt = conn.prepareStatement(sql);
				
				rs = psmt.executeQuery();
				System.out.println("selet1 실행");
				while(rs.next()) {
					System.out.println("select2 실행");
					String id = rs.getString(1);
					String gender = rs.getString(2);
					String fatigue = rs.getString(3);
					String con = rs.getString(4);
					String insomnia = rs.getString(5);
					String flu = rs.getString(6);
					String inf = rs.getString(7);
					String adult = rs.getString(8);
					String diet = rs.getString(9);
					String dig = rs.getString(10);
					String stress = rs.getString(11);
					String drunk = rs.getString(12);
					String hair = rs.getString(13);
					String smoke = rs.getString(14);
					
					vo = new surveyVO(id, gender, fatigue, con, insomnia, flu, inf, adult, diet, dig, stress, drunk, hair, smoke);
					list.add(vo);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close();
				
			}
			return list;
			
		}
	}



