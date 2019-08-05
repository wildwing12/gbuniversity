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

import model.dao.NoticeDAO;
import model.dao.ProfessorDAO;
import model.dao.ScheduleDAO;
import model.dao.StudentDAO;
import model.dto.NoticeDTO;
import model.dto.ProfessorDTO;
import model.dto.ScheduleDTO;

@WebServlet("/GBController2/*")
public class GBController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri=request.getRequestURI();
		ProfessorDAO dao= new ProfessorDAO();
		if(uri.indexOf("proidcheck.do")!=-1) {
			String proid=request.getParameter("proid");
			System.out.println(proid);
			response.getWriter().write(dao.proidchek(proid)+"");
		}else if(uri.indexOf("proLogin.do")!=-1) {
			String proid=request.getParameter("proid");
			String passwd=request.getParameter("passwd");
			int result=dao.proLogin(proid, passwd);
			if(result==1) {
				ProfessorDTO dto=dao.proinfo(proid);
				HttpSession session=request.getSession();
				session.setAttribute("proid",proid);
				session.setAttribute("proname", dto.getProname());
				NoticeDAO dao2=new NoticeDAO();
				ScheduleDAO dao3=new ScheduleDAO();
				ScheduleDTO dto4=dao3.planList();
				session.setAttribute("planlist", dto4);
				List<ScheduleDTO> list2=dao3.schedule();
				List<NoticeDTO> list = dao2.noticeOnlyList();
				request.setAttribute("list", list);//게시판 목록 보내기
				request.setAttribute("list2", list2);
				String page="/professor/main.jsp?message=login";
				RequestDispatcher rd=request.getRequestDispatcher(page);
				rd.forward(request, response);
			}else {
				response.sendRedirect(request.getContextPath()+"/pro_login.jsp?message=fail");
			}
		}else if(uri.indexOf("main.do")!=-1) {
			HttpSession session=request.getSession();
			String proid=(String)session.getAttribute("proid");
			NoticeDAO dao2=new NoticeDAO();
			List<NoticeDTO> list = dao2.noticeOnlyList();
			request.setAttribute("list", list);
			ScheduleDAO dao3=new ScheduleDAO();
			List<ScheduleDTO> list2=dao3.schedule();
			request.setAttribute("list2", list2);
			RequestDispatcher rd=request.getRequestDispatcher("/professor/main.jsp");
			rd.forward(request, response);	
		}else if(uri.indexOf("pro_info.do")!=-1) {
			HttpSession session=request.getSession();
			String proid=(String)session.getAttribute("proid");
			ProfessorDTO dto=dao.proinfo(proid);
			request.setAttribute("dto", dto);
			RequestDispatcher rd=request.getRequestDispatcher("/professor/proInfoEdit.jsp");
			rd.forward(request, response);
		}else if(uri.indexOf("proUpdate.do")!=-1) {
			HttpSession session=request.getSession();
			String proid=(String)session.getAttribute("proid");
			String passwd=request.getParameter("passwd");
			String proname=request.getParameter("proname");
			int age=Integer.parseInt(request.getParameter("age"));
			String hp=request.getParameter("hp");
			String major=request.getParameter("major");
			String proaddress=request.getParameter("proaddress");
			String proaddress2=request.getParameter("proaddress2");
			String email=request.getParameter("email");
			ProfessorDTO dto=new ProfessorDTO();
			dto.setProid(proid);
			dto.setPasswd(passwd);
			dto.setProname(proname);
			dto.setAge(age);
			dto.setHp(hp);
			dto.setMajor(major);
			dto.setProaddress(proaddress);
			dto.setProaddress2(proaddress2);
			dto.setEmail(email);
			dao.updatePro(dto);	
			String page="/GBController2/pro_info.do";
			response.sendRedirect(request.getContextPath()+page);
		}else if(uri.indexOf("proLogout.do")!=-1) {
			HttpSession session=request.getSession();
			session.invalidate();
			String page="/index.jsp";
			response.sendRedirect(request.getContextPath()+page);
		}else if(uri.indexOf("proforgotPw.do")!=-1) {
			String proid=request.getParameter("proid");
			String hp=request.getParameter("hp");
			StudentDAO dao2= new StudentDAO(); 
			int checkPw=dao2.proforgotpw(proid,hp);
			String page="/pro_newPasswd.jsp";
			if(checkPw==1) {
				request.setAttribute("result",1);
				request.setAttribute("proid", proid);
				RequestDispatcher rd=request.getRequestDispatcher(page);
				rd.forward(request, response);
			}else if(checkPw==0) {
				response.sendRedirect(request.getContextPath()+"/pro_forgotPw.jsp?result=0");
			}else if(checkPw==2) {
				response.sendRedirect(request.getContextPath()+"/pro_forgotPw.jsp?result=2");
			}
		}else if(uri.indexOf("pro_newPw.do")!=-1) {
			String proid=request.getParameter("proid");
			String passwd=request.getParameter("passwd");
			StudentDAO dao2= new StudentDAO(); 
			ProfessorDTO dto=new ProfessorDTO();
			dto.setProid(proid);
			dto.setPasswd(passwd);
			dao2.pro_updatePw(dto);
			response.sendRedirect(request.getContextPath()+"/pro_login.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
