package service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminMainView implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		int admin = Integer.parseInt(request.getParameter("admin"));
		
		request.setAttribute("id", id);
		request.setAttribute("admin", admin);
		
		return "adminMain.jsp";
	}

}
