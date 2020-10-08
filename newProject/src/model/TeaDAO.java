package model;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Set;

public class TeaDAO {

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

	// 상품목록보기
	public ArrayList<TeaVO> teaSelect() {
		ArrayList<TeaVO> list = new ArrayList<TeaVO>();
		conn();

		try {
			String sql = "select * from Teas";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();
			while(rs.next()) {
				int tea_id = rs.getInt(1);
				String tea_name = rs.getString(2);
				String tea_img = rs.getString(3);
				String tea_price = rs.getString(4);
				String tea_efficacy = rs.getString(5);
				float score_average = rs.getFloat(6);
				int score_count = rs.getInt(7);
				String side_effect = rs.getString(8);
				TeaVO vo = new TeaVO(tea_id, tea_name, tea_img, tea_price, tea_efficacy, score_average, score_count, side_effect);
				list.add(vo);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	//클라이언트가 요청한 페이지의 내용만 표시하는 메소드, 상품 부분적으로 불러옴
	public ArrayList<TeaVO> teaPaging(int page) {
		//1번 페이지 1~10
		//2번 페이지 11~20
		int startNum = (page-1)*10+1;
		int endNum = page*10;
		ArrayList<TeaVO> list = new ArrayList<TeaVO>();

		try {
			conn();
			String sql = "select * from (select * from Teas where pd_num >=? ) where pd_num <= ?;"; // 상품11~ 20 까지 불러오기
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, startNum); //시작번호
			psmt.setInt(2, endNum); //끝번호
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int tea_id = rs.getInt(1);
				String tea_name = rs.getString(2);
				String tea_img = rs.getString(3);
				String tea_price = rs.getString(4);
				String tea_efficacy = rs.getString(5);
				float score_average = rs.getFloat(6);
				int score_count = rs.getInt(7);
				String side_effect = rs.getString(8);
				TeaVO vo = new TeaVO(tea_id, tea_name, tea_img, tea_price, tea_efficacy, score_average, score_count, side_effect);
				list.add(vo);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	public ArrayList<BasketVO> teaInsert(BasketVO vo) {
		ArrayList<BasketVO> list = new ArrayList<BasketVO>();
		conn();

		try {
			String sql = "insert into Teas values(?,?,?,?);";

			psmt = conn.prepareStatement(sql);

			psmt.executeUpdate();
			psmt.setString(1, vo.getImg());//이미지
			psmt.setString(2, vo.getName());//이름 
			psmt.setString(3, vo.getPrice());//가격
			psmt.setInt(4, vo.getCount());//수량
			
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
}
