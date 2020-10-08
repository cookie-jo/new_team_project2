package control;
 
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.Paging;
import model.productDAO;
import model.productVO;

@WebServlet("/ProductList")
public class ProductList extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		productDAO dao = new productDAO();
		
		int page = 1;
		if(request.getParameter("page")!=null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		Paging paging = new Paging();
		paging.setPage(page);
		paging.setTotalCount(109);
		
		List<productVO> list = dao.productPaging(page);
		request.setAttribute("productList", list);
		request.setAttribute("paging", paging);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("./aroma-master/category.jsp");
		dispatcher.forward(request, response);
		
	}

}
