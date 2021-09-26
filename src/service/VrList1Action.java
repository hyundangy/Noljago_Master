/*package service;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Cafe;
import dao.CafeDAO;
import dao.Good;
import dao.Member;
import dao.MemberDAO;
import dao.Review;
import dao.ReviewDAO;
import dao.Theme;

public class VrList1Action implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		try{
			String id=request.getParameter("id");
			int cnum=0;
			cnum=Integer.parseInt(request.getParameter("cnum"));
			//int tnum=Integer.parseInt(request.getParameter("tnum"));
			CafeDAO cd = CafeDAO.getInstance();
			Cafe cafe = cd.cafe_info(cnum);
			MemberDAO md=MemberDAO.getInstance();
			Member member=md.getUserInfo(id);	//임의로  설정
			ReviewDAO rd=ReviewDAO.getInstance();
			List<Review> review=rd.review_view(cnum);
			List<Theme> list = cd.v_select_theme(cnum);
			//Good good=cd.good_list(cnum, tnum);
			int num=cd.good_num(cnum);
			
			request.setAttribute("id", id);
			request.setAttribute("list", list);
			request.setAttribute("cnum", cnum);
			//request.setAttribute("tnum", tnum);
			request.setAttribute("cafe", cafe);
			request.setAttribute("member",member);
			request.setAttribute("review", review);
			request.setAttribute("num", num);
			//request.setAttribute("good", good);
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		
		return "vrList1View.jsp";
	}

}*/

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
import dao.ReservationDAO;
import dao.Review;
import dao.ReviewDAO;
import dao.Theme;

public class VrList1Action implements CommandProcess {

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
			
			CafeDAO cd = CafeDAO.getInstance();
			Cafe cafe = cd.cafe_info(cnum);
			int cafe_rate=cd.cafe_rate(cnum);
			ReviewDAO rd=ReviewDAO.getInstance();
			List<Review> review=rd.review_view(cnum);		//카페에 맞는 후기 보여줌
			List<Theme> list = cd.v_select_theme(cnum);
			int num=cd.good_num(cnum);						//좋아요 개수 보여줌
			ReservationDAO rsd=ReservationDAO.getInstance();
			int res_yn=rsd.res_yn(id, cnum);			//예약을 했다면 후기를 쓸 수 있음
			int review_yn=rsd.review_yn(id, cnum);		//후기 썼으면 더이상 못 쓰게 막음
			System.out.println("res_yn->"+res_yn);
			
			request.setAttribute("member", member);
			request.setAttribute("list", list);
			request.setAttribute("cnum", cnum);
			request.setAttribute("cafe", cafe);
			request.setAttribute("review", review);
			request.setAttribute("num", num);
			request.setAttribute("res_yn", res_yn);
			request.setAttribute("review_yn", review_yn);
			request.setAttribute("cafe_rate", cafe_rate);
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return "vrList1View.jsp";
	}

}
