package service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Reservation;
import dao.ReservationDAO;
import service.CommandProcess;

public class AmReservationUpdateFormAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		ReservationDAO rd = ReservationDAO.getInstance();
		try {
			String resno = request.getParameter("resno");
			String id = request.getParameter("id");
			String pageNum = request.getParameter("pageNum");
			Reservation reserv = rd.reserv_info(resno);
			
			request.setAttribute("resno", resno);
			request.setAttribute("id", id);
			request.setAttribute("pageNum", pageNum);
			request.setAttribute("reserv", reserv);
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	return "amReservationUpdateForm.jsp";
	}

}
