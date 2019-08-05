package controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import common.Constants;
import model.dao.NoticeDAO;
import model.dto.NoticeDTO;
import notice.Pager;
@WebServlet("/NoticeController/*")
public class NoticeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		NoticeDAO dao = new NoticeDAO();
		if(uri.indexOf("list.do")!=-1) {
			String searchkey = request.getParameter("searchkey");
			String keyword = request.getParameter("keyword");
			int count = dao.writerCount();
			int curPage=1;
			if(request.getParameter("curPage")!=null) {
				curPage = Integer.parseInt(request.getParameter("curPage"));
			}
			Pager pager = new Pager(count,curPage);
			int start = pager.getPageBegin();
			int end = pager.getPageEnd();
			
			List<NoticeDTO> list = dao.noticeList(searchkey,keyword,start,end);
			request.setAttribute("list", list);
			request.setAttribute("page", pager);
			String page="/notice/notice_list.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);
		}else if(uri.indexOf("write.do")!=-1) {
			File uploadDir = new File(Constants.UPLOAD_PATH);
			if(!uploadDir.exists()) {
				uploadDir.mkdir();
			}
			
			MultipartRequest multi = new MultipartRequest(request,Constants.UPLOAD_PATH,Constants.MAX_UPLOAD,"utf-8",new DefaultFileRenamePolicy());
			
			String writer = multi.getParameter("writer");
			String subject = multi.getParameter("subject");
			String content = multi.getParameter("content");
			String passwd = multi.getParameter("passwd");
			String ip = request.getRemoteAddr();
			String filename=" ";
			int filesize=0;			
			try {				
				Enumeration files = multi.getFileNames();				
				while(files.hasMoreElements()) {					
					String file1 = (String)files.nextElement();
					filename = multi.getFilesystemName(file1);
					File f1 = multi.getFile(file1);
					if(f1!=null) {
						filesize = (int)f1.length(); 
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			NoticeDTO dto = new NoticeDTO();
			dto.setWriter(writer);
			dto.setSubject(subject);
			dto.setContent(content);
			dto.setPasswd(passwd);
			dto.setIp(ip);
			System.out.println(writer);
			
			if(filename==null || filename.trim().equals("")) {
				filename="-";
			}
			dto.setFilename(filename);
			dto.setFilesize(filesize);
			dao.writeNotice(dto);
			response.sendRedirect(request.getContextPath()+"/notice/noticemain.jsp");
		}else if(uri.indexOf("view.do")!=-1) {
			int num = Integer.parseInt(request.getParameter("num"));
			HttpSession session = request.getSession();
			dao.readcountPlus(num, session);
			NoticeDTO dto = dao.viewNotice(num);
			request.setAttribute("dto", dto);
			RequestDispatcher rd = request.getRequestDispatcher("/notice/view.jsp");
			rd.forward(request, response);
		}else if(uri.indexOf("update.do")!=-1) {
			HttpSession session = request.getSession();
			String proid = (String)session.getAttribute("proid");
			int num = Integer.parseInt(request.getParameter("num"));
			request.setAttribute("dto", dao.viewNotice(num));
			RequestDispatcher rd = request.getRequestDispatcher("/notice/edit.jsp");
			rd.forward(request, response);
		}else if(uri.indexOf("update_notice.do")!=-1) {
			File uploadDir = new File(Constants.UPLOAD_PATH);
			if(!uploadDir.exists()) {
				uploadDir.mkdir(); 
			}
			
			MultipartRequest multi = new MultipartRequest(request,Constants.UPLOAD_PATH,Constants.MAX_UPLOAD,"utf-8",new DefaultFileRenamePolicy());			
			int num = Integer.parseInt(multi.getParameter("num"));
			String writer = multi.getParameter("writer");
			String subject = multi.getParameter("subject");
			String content = multi.getParameter("content");
			String passwd = multi.getParameter("passwd");
			String ip = request.getRemoteAddr();
			String filename=" ";
			int filesize=0;			
			
			try {
				Enumeration files = multi.getFileNames();				
				while(files.hasMoreElements()) {					
					String file1 = (String)files.nextElement();
					filename = multi.getFilesystemName(file1);
					File f1 = multi.getFile(file1);
					if(f1!=null) {
						filesize = (int)f1.length();
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}	
			
			NoticeDTO dto = new NoticeDTO();
			dto.setNum(num);
			dto.setWriter(writer);
			dto.setSubject(subject);
			dto.setContent(content);
			dto.setPasswd(passwd);
			dto.setIp(ip);
			if(filename==null || filename.trim().equals("")) { 
				//새로운 첨부파일이 없을 때 → 테이블의 기존 정보를 가져옴
				NoticeDTO dto2 = dao.viewNotice(num);
				String fName = dto2.getFilename();
				int fSize = dto2.getFilesize();
				int fDown = dto2.getDown();
				dto.setFilename(fName);
				dto.setFilesize(fSize);
				dto.setDown(fDown);
			}else {
				//새로운 첨부파일이 있을 때
				dto.setFilename(filename);
				dto.setFilesize(filesize);
			}
			//첨부파일 삭제 처리
			String fileDel = multi.getParameter("fileDel");
			//체크박스가 체크되었으면(value 없이 썼으므로 on이 디폴트)
			if(fileDel!=null && fileDel.equals("on")) {
				String fileName = dao.fileName(num);
				File f = new File(Constants.UPLOAD_PATH+fileName);
				f.delete(); //파일 삭제
				//첨부파일의 정보도 지우기
				dto.setFilename("-");
				dto.setFilesize(0);
				dto.setDown(0);
			}
			System.out.println(filesize);
			
			dao.updateNotice(dto);	
			
			response.sendRedirect(request.getContextPath()+"/NoticeController/view.do?num="+num);
		}else if(uri.indexOf("download.do")!=-1) {
			int num = Integer.parseInt(request.getParameter("num"));
			String filename = dao.fileName(num);
			System.out.println("첨부파일명: "+filename);
			
			String path = Constants.UPLOAD_PATH+filename;
			byte b[] = new byte[4096];
			
			FileInputStream fis = new FileInputStream(path);			
			String mimeType = getServletContext().getMimeType(path);
			if(mimeType==null) {
				mimeType="application/octet-stream;charset=utf-8";
			}
			
			filename = new String(filename.getBytes("utf-8"),"8859_1");
			
			response.setHeader("Content-Disposition", "attachment;filename="+filename);
			ServletOutputStream out = response.getOutputStream();
			int numRead;
			while(true) {
				numRead = fis.read(b,0,b.length); 
				if(numRead == -1) break;
				out.write(b,0,numRead); 
			}			
			out.flush(); 
			out.close();
			fis.close();			
			dao.downPlus(num);
		}else if(uri.indexOf("delete.do")!=-1) {
			MultipartRequest multi = new MultipartRequest(request,Constants.UPLOAD_PATH,Constants.MAX_UPLOAD,"utf-8",new DefaultFileRenamePolicy());
			int num = Integer.parseInt(multi.getParameter("num"));
			dao.deleteNotice(num);
			
			response.sendRedirect(request.getContextPath()+"/notice/noticemain.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
