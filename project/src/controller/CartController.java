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
import model.dto.CartDTO;

@WebServlet("/CartController/*")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri=request.getRequestURI();
		CartDAO dao=new CartDAO();
		if(uri.indexOf("cartList.do")!=-1) {
			HttpSession session=request.getSession();
			String stdid=(String)session.getAttribute("stdid");
			List<CartDTO> list=dao.list(stdid);
			request.setAttribute("list", list);
			request.setAttribute("count", list.size());
			String page="/student/std_evaluation.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
		}else if(uri.indexOf("insert_eval.do")!=-1) {
			HttpSession session=request.getSession();
			String stdid=(String)session.getAttribute("stdid");
			int cnum=Integer.parseInt(request.getParameter("cnum"));
			int eval_score1=Integer.parseInt(request.getParameter("eval_score1"));
			int eval_score2=Integer.parseInt(request.getParameter("eval_score2"));
			int eval_score3=Integer.parseInt(request.getParameter("eval_score3"));
			int eval_score4=Integer.parseInt(request.getParameter("eval_score4"));
			int eval_score5=Integer.parseInt(request.getParameter("eval_score5"));
			int eval_score6=Integer.parseInt(request.getParameter("eval_score6"));
			int eval_score7=Integer.parseInt(request.getParameter("eval_score7"));
			int eval_score8=Integer.parseInt(request.getParameter("eval_score8"));
			int eval_score9=Integer.parseInt(request.getParameter("eval_score9"));
			String suggestion=request.getParameter("suggestion");
			String term=request.getParameter("term");
			CartDTO dto=new CartDTO();
			dto.setStdid(stdid);
			dto.setCnum(cnum);
			dto.setEval_score1(eval_score1);
			dto.setEval_score2(eval_score2);
			dto.setEval_score3(eval_score3);
			dto.setEval_score4(eval_score4);
			dto.setEval_score5(eval_score5);
			dto.setEval_score6(eval_score6);
			dto.setEval_score7(eval_score7);
			dto.setEval_score8(eval_score8);
			dto.setEval_score9(eval_score9);
			dto.setSuggestion(suggestion);
			dto.setTerm(term);
			dao.insert_eval(dto);
			response.sendRedirect(request.getContextPath()+"/CartController/cartList.do");
			
		}else if(uri.indexOf("writeEval.do")!=-1) {
			int cnum=Integer.parseInt(request.getParameter("cnum"));
			CartDTO dto=dao.cart_detail(cnum);
			request.setAttribute("dto", dto);
			RequestDispatcher rd=request.getRequestDispatcher("/student/write_eval.jsp");
			rd.forward(request, response);
		}else if(uri.indexOf("check_eval.do")!=-1) {
			HttpSession session=request.getSession();
			String proname=(String)session.getAttribute("proname");
			List<CartDTO> list=dao.check_eval(proname);
			request.setAttribute("list", list);
			RequestDispatcher rd=request.getRequestDispatcher("/professor/pro_evaluation.jsp");
			rd.forward(request, response);
		}else if(uri.indexOf("view.do")!=-1) {
			int cnum=Integer.parseInt(request.getParameter("cnum"));
			CartDTO dto=dao.view(cnum);
			request.setAttribute("dto", dto);
			RequestDispatcher rd=request.getRequestDispatcher("/professor/view_eval.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
