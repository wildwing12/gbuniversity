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

import com.sun.xml.internal.fastinfoset.Encoder;

import model.dao.NoticeDAO;
import model.dao.RegisetrDAO;
import model.dao.ScheduleDAO;
import model.dao.StudentDAO;
import model.dto.NoticeDTO;
import model.dto.ProfessorDTO;
import model.dto.RegisterDTO;
import model.dto.ScheduleDTO;
import model.dto.StudentDTO;

@WebServlet("/GBController/*")
public class GBController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri=request.getRequestURI();
		System.out.println(uri);
		StudentDAO dao= new StudentDAO(); 
		 if(uri.indexOf("stu_join.do")!=-1) {
			String stdid=request.getParameter("stdid");
			String passwd=request.getParameter("passwd");
			String stdname=request.getParameter("stdname");
			int age=Integer.parseInt(request.getParameter("age"));
			String hp=request.getParameter("hp");
			String major=request.getParameter("major");
			String stdaddress=request.getParameter("stdaddress");
			String stdaddress2=request.getParameter("stdaddress2");
			String stdemail=request.getParameter("stdemail");
			StudentDTO dto=new StudentDTO();
			dto.setStdid(stdid);
			dto.setPasswd(passwd);
			dto.setStdname(stdname);
			dto.setAge(age);
			dto.setHp(hp);
			dto.setMajor(major);
			dto.setStdaddress(stdaddress);
			dto.setStdaddress2(stdaddress2);
			dto.setStdemail(stdemail);
			dao.join(dto);
			String page ="/index.jsp";
			response.sendRedirect(request.getContextPath()+page);
		}else if(uri.indexOf("idcheck.do")!=-1) {
			String stdid=request.getParameter("stdid");
			 response.getWriter().write(dao.idchek(stdid)+"");
		}else if(uri.indexOf("std_login.do")!=-1) {
			String stdid=request.getParameter("stdid");
			String passwd=request.getParameter("passwd");
			int login=dao.std_login(stdid,passwd);
			//sysou
			if(login==0) {
				String page="/stu_login.jsp?message=error";
				response.sendRedirect(request.getContextPath()+page);
				
			}else if(login==1) {
				HttpSession session=request.getSession();
				StudentDTO dto=dao.studentInfo(stdid);
				session.setAttribute("stdid", stdid);
				session.setAttribute("name", dto.getStdname());
				System.out.println(dto.getStdname());
				NoticeDAO dao2=new NoticeDAO();
				ScheduleDAO dao3=new ScheduleDAO();
				ScheduleDTO dto4=dao3.planList();
				session.setAttribute("planlist", dto4);
				List<ScheduleDTO> list2=dao3.schedule();
				List<NoticeDTO> list = dao2.noticeOnlyList();
				request.setAttribute("list", list);//게시판 목록 보내기
				request.setAttribute("list2", list2);
				String page="/student/std_main.jsp?message=login";
				//response.sendRedirect(request.getContextPath()+page);
				RequestDispatcher rd=request.getRequestDispatcher(page);
				rd.forward(request, response);
			
			}
		}else if(uri.indexOf("main.do")!=-1) {
			HttpSession session=request.getSession();
			String stdid=(String)session.getAttribute("stdid");
			NoticeDAO dao2=new NoticeDAO();
			List<NoticeDTO> list = dao2.noticeOnlyList();
			request.setAttribute("list", list);
			ScheduleDAO dao3=new ScheduleDAO();
			List<ScheduleDTO> list2=dao3.schedule();
			request.setAttribute("list2", list2);
			RequestDispatcher rd=request.getRequestDispatcher("/student/std_main.jsp");
			rd.forward(request, response);			
		}else if(uri.indexOf("std_register.do")!=-1) {
			HttpSession session=request.getSession();
			String stdid =(String)session.getAttribute("stdid");
			RegisetrDAO dao2=new RegisetrDAO();
			List<RegisterDTO> list= dao2.registerList();
			List<RegisterDTO> list2 = dao2.registerList2(stdid);
			session.setAttribute("list", list);
			session.setAttribute("list2", list2);
			RequestDispatcher rd=request.getRequestDispatcher("/student/register.jsp");
			rd.forward(request, response);
		}else if(uri.indexOf("insertRegister.do")!=-1) {
			HttpSession session=request.getSession();
			String stdid =(String)session.getAttribute("stdid");
			RegisterDTO dto= new RegisterDTO();
			int subcode = Integer.parseInt(request.getParameter("subcode"));
			String major = request.getParameter("major");
			String subname = request.getParameter("subname");
			String categories = request.getParameter("categories");
			String proname =request.getParameter("proname");
			String term=request.getParameter("term");
			dto.setStdid(stdid);
			dto.setSubcode(subcode);
			dto.setMajor(major);
			dto.setSubname(subname);
			dto.setCategories(categories);
			dto.setProname(proname);
			dto.setTerm(term);
			int compare1=dao.compare(subcode);
			int compare2=dao.compar2(subcode);
			System.out.println(compare1);
			System.out.println(compare2);
			if(compare1==compare2) {
				String page="/GBController/std_register.do?message=fail";
				response.sendRedirect(request.getContextPath()+page);
				
			}else if(compare1!=compare2) {
				dao.insertRegister(dto);
				String page="/GBController/std_register.do?message=success";
				response.sendRedirect(request.getContextPath()+page);
				
			}
			
			
			
		}else if(uri.indexOf("delete_sub.do")!=-1) {
			int cnum = Integer.parseInt(request.getParameter("cnum"));
			RegisetrDAO dao2= new RegisetrDAO();
			dao2.delete_sub(cnum);
			String page="/GBController/std_register.do";
			response.sendRedirect(request.getContextPath()+page);
		
		}else if(uri.indexOf("pro_join.do")!=-1) {//교수 등록
			String proid=request.getParameter("proid");
			String passwd=request.getParameter("passwd");
			String proname=request.getParameter("proname");
			int age=Integer.parseInt(request.getParameter("age")) ;
			String hp=request.getParameter("hp");
			String major=request.getParameter("major");
			String proaddress=request.getParameter("proaddress");
			String proaddress2=request.getParameter("proaddress2");
			String email=request.getParameter("email");
			ProfessorDTO dto= new ProfessorDTO();
			dto.setProid(proid);
			dto.setPasswd(passwd);
			dto.setProname(proname);
			dto.setAge(age);
			dto.setHp(hp);
			dto.setMajor(major);
			dto.setProaddress(proaddress);
			dto.setProaddress2(proaddress2);
			dto.setEmail(email);
			dao.pro_join(dto);
			String page ="/index.jsp";
			response.sendRedirect(request.getContextPath()+page);
		}else if(uri.indexOf("std_info.do")!=-1) {
			HttpSession session=request.getSession();
			String stdid=(String)session.getAttribute("stdid");
			StudentDTO dto=dao.studentInfo(stdid);
			request.setAttribute("dto", dto);
			RequestDispatcher rd=request.getRequestDispatcher("/student/stdInfoEdit.jsp");
			rd.forward(request, response);
		}else if(uri.indexOf("edit.do")!=-1) {
			HttpSession session=request.getSession();
			String stdid=(String)session.getAttribute("stdid");
			String passwd=request.getParameter("passwd");
			String stdname=request.getParameter("stdname");
			int age=Integer.parseInt(request.getParameter("age"));
			String hp=request.getParameter("hp");
			String major=request.getParameter("major");
			String stdaddress=request.getParameter("stdaddress");
			String stdaddress2=request.getParameter("stdaddress2");
			String stdemail=request.getParameter("stdemail");
			StudentDTO dto=dao.studentInfo(stdid);
			dto.setStdid(stdid);
			dto.setPasswd(passwd);
			dto.setStdname(stdname);
			dto.setAge(age);
			dto.setHp(hp);
			dto.setMajor(major);
			dto.setStdaddress(stdaddress);
			dto.setStdaddress2(stdaddress2);
			dto.setStdemail(stdemail);
			dao.stdupdate(dto);
			String page ="/GBController/std_info.do";
			response.sendRedirect(request.getContextPath()+page);
		}else if(uri.indexOf("stdLogout.do")!=-1) {
			HttpSession session =request.getSession();
			session.invalidate();
			response.sendRedirect(request.getContextPath()+"/index.jsp");
		}else if(uri.indexOf("scheduleCheck.do")!=-1) {
			ScheduleDAO dao2=new ScheduleDAO();
			List<ScheduleDTO> list=dao2.schedule();
			request.setAttribute("list", list);
			request.setAttribute("count", list.size());
			RequestDispatcher rd=request.getRequestDispatcher("/student/stdschedule.jsp");
			rd.forward(request, response);
		}else if(uri.indexOf("stdforgotid.do")!=-1){
			String stdname=request.getParameter("stdname");
			String stdemail=request.getParameter("stdemail");
			String stdid=dao.forgotid(stdname, stdemail);
			if(stdid!=null) {
				response.getWriter().write(stdid+"");				
			}else {
				response.setCharacterEncoding("utf-8");
				response.setContentType("text/html; charset=UTF-8");
				response.getWriter().write("존재하지 않습니다.");
			}
		}else if(uri.indexOf("forgotPw.do")!=-1) {
			String stdid=request.getParameter("stdid");
			String hp=request.getParameter("hp");
			int checkPw=dao.forgotpw(stdid,hp);
			String page="/newPasswd.jsp";
			if(checkPw==1) {
				request.setAttribute("result",1);
				request.setAttribute("stdid", stdid);
				RequestDispatcher rd=request.getRequestDispatcher(page);
				rd.forward(request, response);
			}else if(checkPw==0) {
				response.sendRedirect(request.getContextPath()+"/forgotPasswd.jsp?result=0");
			}else if(checkPw==2) {
				response.sendRedirect(request.getContextPath()+"/forgotPasswd.jsp?result=2");
			}
		}else if(uri.indexOf("newPw.do")!=-1) {
			String stdid=request.getParameter("stdid");
			String passwd=request.getParameter("passwd");
			StudentDTO dto=new StudentDTO();
			dto.setStdid(stdid);
			dto.setPasswd(passwd);
			dao.updatePw(dto);
			response.sendRedirect(request.getContextPath()+"/stu_login.jsp");
		}else if(uri.indexOf("proforgotid.do")!=-1) {
			String proname=request.getParameter("proname");
			String email=request.getParameter("email");
			String proid=dao.proforgotid(proname, email);
			if(proid!=null) {
				response.getWriter().write(proid+"");				
			}else {
				response.setCharacterEncoding("utf-8");
				response.setContentType("text/html; charset=UTF-8");
				response.getWriter().write("존재하지 않습니다.");
			}
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
