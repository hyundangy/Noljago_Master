package service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Review;
import dao.ReviewDAO;

public class RoomWriteProAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		try{
			int rate=Integer.parseInt(request.getParameter("rate"));
			ReviewDAO rd = ReviewDAO.getInstance();
			Review review = new Review();
			review.setRecontent(request.getParameter("recontent"));
			review.setRate(rate);
			//int result = rd.review_insert(review);
			//request.setAttribute("result", result);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "roomWriteProView.jsp";
	}

}
