package service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Cafe;
import dao.CafeDAO;

public class AmCafeUpdateFormAction implements CommandProcess {
	
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws ServletException,IOException {
		try {
			int cnum = Integer.parseInt(request.getParameter("cnum"));
			String pageNum = request.getParameter("pageNum");
			CafeDAO cd = CafeDAO.getInstance();
			Cafe cafe = cd.cafe_info(cnum);
			request.setAttribute("pageNum", pageNum);
			request.setAttribute("cafe", cafe);
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
	return "amCafeUpdateForm.jsp";
	}
}
