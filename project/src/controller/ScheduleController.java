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

import model.dao.ScheduleDAO;
import model.dto.ScheduleDTO;

@WebServlet("/ScheduleController/*")
public class ScheduleController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri=request.getRequestURI();
		ScheduleDAO dao=new ScheduleDAO();
		if(uri.indexOf("plan.do")!=-1) {
			int anum=Integer.parseInt(request.getParameter("anum"));
			String plan=request.getParameter("plan");
			ScheduleDTO dto=new ScheduleDTO();
			dto.setAnum(anum);
			dto.setPlan(plan);
			dao.updatePlan(dto);
			response.sendRedirect(request.getContextPath()+"/ScheduleController/scheduleList.do");
		}else if(uri.indexOf("scheduleList.do")!=-1) {
			ScheduleDTO dto=dao.planList();
			List<ScheduleDTO> list=dao.schedule();
			request.setAttribute("planList", dto);
			request.setAttribute("list", list);
			request.setAttribute("count", list.size());
			RequestDispatcher rd=request.getRequestDispatcher("/professor/schdule.jsp");
			rd.forward(request, response);
		}else if(uri.indexOf("inputs.do")!=-1) {
			HttpSession session=request.getSession();
			String writer=(String)session.getAttribute("proname");
			String eday=request.getParameter("eday");
			String event=request.getParameter("event");
			ScheduleDTO dto=new ScheduleDTO();
			dto.setWriter(writer);
			dto.setEday(eday);
			dto.setEvent(event);
			dao.insert(dto);
			String page="/ScheduleController/scheduleList.do";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
			
		}else if(uri.indexOf("delete.do")!=-1) {
			int schnum=Integer.parseInt(request.getParameter("schnum"));
			dao.delete(schnum);
			response.sendRedirect(request.getContextPath()+"/ScheduleController/scheduleList.do");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
