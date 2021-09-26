package service;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Member;
import dao.MemberDAO;

public class LoginAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws ServerException, IOException {
		try {
			String id = request.getParameter("id");
			String password = request.getParameter("password");
			MemberDAO md = MemberDAO.getInstance();
			
			// 회원정보 가져오는 DAO메소드
			Member member = new Member();
			member = md.getUserInfo(id);
			
			// 로그인기능 메소드
			int result = md.login(id, password);
			if(result != 1) {
				id = null;
			}
			request.setAttribute("member", member);
			request.setAttribute("result", result);
			if(result == 1) 
				return "main.jsp";
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "login.jsp";
	}

}
