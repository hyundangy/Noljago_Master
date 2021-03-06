package service;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Cafe;
import dao.CafeDAO;
import dao.Member;
import dao.MemberDAO;

public class VrMainAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		try{
			// 회원정보 가져오는 DAO메소드
			String id = request.getParameter("id");
			MemberDAO md = MemberDAO.getInstance();
			Member member = new Member();
			member = md.getUserInfo(id);
			
			CafeDAO cd = CafeDAO.getInstance();
			List<Cafe> list = cd.list();
			
			request.setAttribute("member", member);
			request.setAttribute("list", list);
			request.setAttribute("id", id);
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		
		return "vrMainView.jsp";
	}

}
