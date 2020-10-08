package control;
 
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.reviewDAO;
import model.reviewVO;



@WebServlet("/review")
public class review extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		//리뷰페이지에서 등록 시 값 받아오는 부분
		String main = request.getParameter("review_main");
		int score = Integer.parseInt(request.getParameter("review_score"));
		
		// 객체생성 후 회원 회원가입 함수 사용
		reviewDAO dao = new reviewDAO();
		reviewVO vo= new reviewVO(main, score);
		int cnt = dao.review(vo);
		
		// 성공, 실패
		if (cnt > 0) {
			System.out.println("성공");
		} else {
			System.out.println("실패");
		}
		response.sendRedirect("aroma-master/single-product.jsp");
	}
}
