package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.dao.CartDAO;
import model.dao.ScoreDAO;
import model.dto.CartDTO;
import model.dto.ScoreDTO;

@WebServlet("/ScoreController/*")
public class ScoreController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri=request.getRequestURI();
		ScoreDAO dao=new ScoreDAO();
		if(uri.indexOf("check_grade.do")!=-1) {
			HttpSession session=request.getSession();
			String stdid=(String)session.getAttribute("stdid");
			CartDAO dao2=new CartDAO();
			List<CartDTO> list=dao2.list(stdid);
			List<ScoreDTO> list2 = dao.list(stdid);
			ScoreDTO dto=dao.getTerm(stdid);
			String term=dto.getTerm();
			System.out.println(term);
			List<ScoreDTO> list3=dao.totalList(stdid,term);
			System.out.println(list3);
			request.setAttribute("count", list.size());
			request.setAttribute("list", list2);
			request.setAttribute("list3", list3);
			request.setAttribute("count2", list3.size());
			/*
			 * for(ScoreDTO dto : list2) { }
			String term=dto.getTerm();
			 */
			RequestDispatcher rd=request.getRequestDispatcher("/student/std_score.jsp");
			rd.forward(request, response);
		}else if(uri.indexOf("input_score.do")!=-1) {
			HttpSession session=request.getSession();
			String proname=(String)session.getAttribute("proname");
			String proid=(String)session.getAttribute("proid");
			List<CartDTO> list=dao.pro_inputList(proname);
			request.setAttribute("list_cart", list);
			request.setAttribute("count", list.size());
			List<ScoreDTO> list2=dao.updateList(proid);
			request.setAttribute("list_cart2", list2);
			RequestDispatcher rd = request.getRequestDispatcher("/professor/pro_grading.jsp");
			rd.forward(request, response);
		}else if(uri.indexOf("inputScore.do")!=-1) {//교수 성적 입력 코드
			HttpSession session=request.getSession();
			String proid=(String)session.getAttribute("proid");
			int cnum=Integer.parseInt(request.getParameter("cnum"));
			int subcode=Integer.parseInt(request.getParameter("subcode"));
			double score=Double.parseDouble(request.getParameter("score"));
			String stdid=request.getParameter("stdid");
			ScoreDTO dto=new ScoreDTO();
			CartDTO dto2=new CartDTO();
			dto.setProid(proid);
			dto.setCnum(cnum);
			dto.setSubcode(subcode);
			dto.setScore(score);
			dto.setStdid(stdid);
			dao.inputScore(dto);
			dto2.setCnum(cnum);
			dao.changeShow(dto2);
			response.sendRedirect(request.getContextPath()+"/ScoreController/input_score.do");
		}else if(uri.indexOf("view.do")!=-1) {
			int cnum=Integer.parseInt(request.getParameter("cnum"));
			CartDTO dto=dao.view(cnum);
			request.setAttribute("dto", dto);
			RequestDispatcher rd=request.getRequestDispatcher("/professor/input.jsp");
			rd.forward(request, response);
		}else if(uri.indexOf("updateView.do")!=-1) {
			int cnum=Integer.parseInt(request.getParameter("cnum"));
			ScoreDTO dto=dao.updateView(cnum);
			request.setAttribute("dto", dto);
			RequestDispatcher rd=request.getRequestDispatcher("/professor/update.jsp");
			rd.forward(request, response);
		}else if(uri.indexOf("updateScore.do")!=-1) {
			int snum=Integer.parseInt(request.getParameter("snum"));
			double score=Double.parseDouble(request.getParameter("score"));
			System.out.println(score);
			System.out.println(snum);
			ScoreDTO dto=new ScoreDTO();
			dto.setSnum(snum);
			dto.setScore(score);
			dao.updateScore(dto);
			response.sendRedirect(request.getContextPath()+"/ScoreController/input_score.do");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
