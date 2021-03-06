package service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Board;
import dao.BoardDAO;

public class BoardDeleteProAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
			try {
				request.setCharacterEncoding("utf-8");
				/*int bnum = Integer.parseInt(request.getParameter("bnum"));*/
				int ref = Integer.parseInt(request.getParameter("ref"));
				String id = request.getParameter("id");
				String pageNum = request.getParameter("pageNum");
				BoardDAO bdPro = BoardDAO.getInstance();
				Board board = new Board();
				int result = bdPro.delete(ref,id);

				request.setAttribute("result", result);
				request.setAttribute("pageNum", pageNum);
				request.setAttribute("ref", ref);
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
		return "boardDeletePro.jsp";
	}

}
