package service;

import java.io.IOException;
import java.security.SecureRandom;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CafeDAO;
import dao.MemberDAO;
import dao.Reservation;
import dao.ReservationDAO;

public class AmReservationAddProAction implements CommandProcess {
	
	@Override
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("-------------------------------------------------------------------------------");
		System.out.println("AmReservationAddProAction start-->");
		System.out.println("-------------------------------------------------------------------------------");
 
		ReservationDAO rd = ReservationDAO.getInstance();
		System.out.println("AmReservationAddProAction ReservationDAO-->");
		CafeDAO cd = CafeDAO.getInstance();
		System.out.println("AmReservationAddProAction CafeDAO-->");
		MemberDAO md = MemberDAO.getInstance();
		System.out.println("AmReservationAddProAction MemberDAO-->");
		
		try {
			request.setCharacterEncoding("utf-8");
			String pageNum = request.getParameter("pageNum");
			Reservation reserv = new Reservation();
			String id = request.getParameter("id");
			String resno = request.getParameter("resno");
			System.out.println("-------------------------------------------------------------------------------");
			System.out.println("AmReservationAddProAction reserv-->" + reserv);
			System.out.println("AmReservationAddProAction pageNum-->" + pageNum);
			System.out.println("AmReservationAddProAction id-->" + id);
			System.out.println("AmReservationAddProAction resno-->" + resno);
			System.out.println("-------------------------------------------------------------------------------");
			
			int admin = md.getAdmin(id);
			if (admin == 3) {
				reserv.setResdate(request.getParameter("resdate"));
				reserv.setStarttime(Integer.parseInt(request.getParameter("starttime")));
				reserv.setId(request.getParameter("reservid"));
				reserv.setEndtime(Integer.parseInt(request.getParameter("endtime")));
				reserv.setPnum(Integer.parseInt(request.getParameter("pnum")));
				reserv.setCnum(Integer.parseInt(request.getParameter("cnum")));
				reserv.setTnum(Integer.parseInt(request.getParameter("tnum")));
				reserv.setResno(resno);
				reserv.setCount(Integer.parseInt(request.getParameter("count")));
				reserv.setPoint(Integer.parseInt(request.getParameter("point")));
			}
			
			if (admin == 2) {
				int cnum = cd.getCnum(id);
				reserv.setResdate(request.getParameter("resdate"));
				reserv.setStarttime(Integer.parseInt(request.getParameter("starttime")));
				reserv.setId(request.getParameter("reservid"));
				reserv.setEndtime(Integer.parseInt(request.getParameter("endtime")));
				reserv.setPnum(Integer.parseInt(request.getParameter("pnum")));
				reserv.setCnum(cnum);
				reserv.setTnum(Integer.parseInt(request.getParameter("tnum")));
				reserv.setResno(resno);
				reserv.setCount(Integer.parseInt(request.getParameter("count")));
				reserv.setPoint(Integer.parseInt(request.getParameter("point")));
			}
			int result = rd.reservation(reserv);
			System.out.println("-------------------------------------------------------------------------------");
			System.out.println("AmReservationAddProAction result-->"+ result);
			System.out.println("-------------------------------------------------------------------------------");
			
			request.setAttribute("result", result);
			request.setAttribute("id", id);
			request.setAttribute("pageNum", pageNum);
			
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}		
		return "amReservationAddPro.jsp";
	}
	
	


}
