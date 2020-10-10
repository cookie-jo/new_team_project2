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
	
	//클라이언트가 요청한 페이지의 내용만 표시하는 메소드, 상품 부분적으로 불러옴 페이징하려고 만든건데, 지금 안쓰임
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
	
	//로그인한 회원정보를 DB에서 가져와서 티값을 꺼내옴
	public MemberTeaVO getMemberTea(String id) {
		conn();
		MemberTeaVO vo = null;
		try {
			String sql = "select * from survey_result_1 where member_member_id = ?";

			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			while(rs.next()) {
				String member_id = rs.getString(1);
				int tea_id = rs.getInt(2);
				vo = new MemberTeaVO(member_id, tea_id);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return vo;
	}

	
	
	//차 추천서비스 할 때 사진 불러오는  함수 (만드는 중) //Eunsoo 94  장포차 현재 이 질의문은 이렇게 뜸.
	//select tea_name, tea_img from teas where tea_id = 55; 이렇게 뜨게 하려면 음.... 
	public MemberTeaVO teaRecommend(MemberTeaVO vo) { 

		MemberTeaVO info = null;
		try {
			conn();
			// s.member_member_id & s.teas_tea_id  여기에 memberDAO 가져오기
			String sql = "select s.member_member_id, m.member_name, s.teas_tea_id, t.tea_name, t.tea_img, t.tea_price, t.side_effect\r\n" + 
					"from survey_result_1 s, member m, teas t\r\n" + 
					"where s.member_member_id = m.member_id and s.teas_tea_id = t.tea_id\r\n" + 
					"and s.member_member_id = ?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getMember_id());
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				String member_id = rs.getString(1);
				String member_name = rs.getString(2);
				int tea_id = rs.getInt(3);
				String tea_name = rs.getString(4);
				String tea_img = rs.getString(5);
				String tea_price = rs.getString(6);
				String side_effect = rs.getString(7);
				info = new MemberTeaVO(member_id, member_name, tea_id, tea_name, tea_img, tea_price, side_effect);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return info;
	}
	
}
