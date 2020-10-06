package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Set;

public class productDAO {

	PreparedStatement psmt;
	Connection conn;
	int cnt = 0;
	ResultSet rs;
	String name = null;

	// 메서드 생성
	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "test";
			String db_pw = "1234";

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

	// 상품목록보기
	public ArrayList<productVO> productSelect() {
		ArrayList<productVO> list = new ArrayList<productVO>();
		conn();

		try {
			String sql = "select * from product";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();
			while(rs.next()) {
				int pd_num = rs.getInt(1);
				String pd_img = rs.getString(2);
				String pd_name = rs.getString(3);
				String pd_price = rs.getString(4);
				String pd_content = rs.getString(5);
				productVO vo1 = new productVO(pd_num, pd_img, pd_name, pd_price, pd_content);
				list.add(vo1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	
}
