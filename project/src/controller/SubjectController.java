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

import model.dao.RegisetrDAO;
import model.dto.RegisterDTO;

@WebServlet("/Subject/*")
public class SubjectController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri=request.getRequestURI();
		RegisetrDAO dao=new RegisetrDAO();
		if(uri.indexOf("insertSub.do")!=-1) {
			HttpSession session=request.getSession();
			String proname=(String)session.getAttribute("proname");
			String term=request.getParameter("term");
			int subcode=Integer.parseInt(request.getParameter("subcode"));
			String subname=request.getParameter("subname");
			String categories=request.getParameter("categories");
			int subnum=Integer.parseInt(request.getParameter("subnum"));
			RegisterDTO dto = new RegisterDTO();
			dto.setTerm(term);
			dto.setProname(proname);
			dto.setSubcode(subcode);
			dto.setSubname(subname);
			dto.setCategories(categories);
			dto.setSubnum(subnum);
			dao.insertSub(dto);
			String page="/Subject/sublist.do";
			response.sendRedirect(request.getContextPath()+page);
		}else if(uri.indexOf("sublist.do")!=-1) {
			HttpSession session=request.getSession();
			String proname=(String)session.getAttribute("proname");
			List<RegisterDTO> list=dao.subList();
			request.setAttribute("list", list);
			RequestDispatcher rd=request.getRequestDispatcher("/professor/proRegister.jsp");
			rd.forward(request, response);
		}else if(uri.indexOf("deleteSubject.do")!=-1) {
			int subcode=Integer.parseInt(request.getParameter("subcode"));
			dao.deleteSubject(subcode);
			response.sendRedirect(request.getContextPath()+"/Subject/sublist.do?message=delete");
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
