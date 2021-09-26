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
import dao.Review;
import dao.ReviewDAO;
import dao.Theme;

public class roomListAction implements CommandProcess {

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
			int cnum=0;
			int num=cd.good_num(cnum);
			cnum=Integer.parseInt(request.getParameter("cnum"));
			List<Theme> list = cd.r_select_theme(cnum);
			ReviewDAO rd=ReviewDAO.getInstance();
			List<Review> review =rd.review_view(cnum);
			Cafe cafe = cd.r_list3(cnum);
			
			request.setAttribute("member", member);
			
			request.setAttribute("list", list);
			request.setAttribute("cnum", cnum);
			request.setAttribute("cafe", cafe);
			request.setAttribute("review", review);
			request.setAttribute("num", num);
			
		}catch(Exception e){
			System.out.println(e.getMessage());
		}

		return "roomListView.jsp";
	}

}
