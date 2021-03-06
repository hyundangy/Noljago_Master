package service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Board;
import dao.BoardDAO;

public class BoardWriterProAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf-8");
			Board board = new Board();
			String pageNum = request.getParameter("pageNum");
			board.setBnum(Integer.parseInt(request.getParameter("bnum")));
			board.setCategory(request.getParameter("category"));
			board.setId(request.getParameter("id"));
			board.setContent(request.getParameter("content"));
			board.setSubject(request.getParameter("subject"));
			board.setRef(Integer.parseInt(request.getParameter("ref")));
			BoardDAO bdPro = BoardDAO.getInstance();
			int result = bdPro.insert(board);

			request.setAttribute("bnum", board.getBnum());
			request.setAttribute("result", result);
			request.setAttribute("pageNum", pageNum);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "boardWriterPro.jsp";
	}

}
