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
import dao.Theme;

public class VrList2Action implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try{
			// 회원정보 가져오는 DAO메소드
			String id = request.getParameter("id");
			MemberDAO md = MemberDAO.getInstance();
			Member member = new Member();
			member = md.getUserInfo(id);
			
			int cnum=Integer.parseInt(request.getParameter("cnum"));
			int tnum=Integer.parseInt(request.getParameter("tnum"));
			
			CafeDAO cd = CafeDAO.getInstance();
			Cafe cafe = cd.cafe_info(cnum);
			Theme theme=cd.v_theme(cnum, tnum);
			int num=cd.good_num2(cnum, tnum);	//테마에 대한 좋아요 개수 출력
			int good_y=cd.good_yn(id,cnum,tnum);  //로그인한 id가 카페 tnum에 대해 좋아요를 눌렀는지 확인
			System.out.println("good_y->"+good_y);
			
			request.setAttribute("member", member);
			request.setAttribute("cafe", cafe);
			request.setAttribute("theme", theme);
			request.setAttribute("cnum", cnum);
			request.setAttribute("tnum", tnum);
			request.setAttribute("num", num);
			request.setAttribute("id", id);
			request.setAttribute("good_y", good_y);
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return "vrList2View.jsp";
	}

}
