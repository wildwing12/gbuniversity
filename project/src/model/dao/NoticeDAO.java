package model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import model.dto.NoticeDTO;
import sqlmap.MybatisManager;

public class NoticeDAO {

	public int writerCount() {
		SqlSession session = MybatisManager.getInstance().openSession();
		int count = session.selectOne("notice.count");
		session.close();
		return count;
	}

	public List<NoticeDTO> noticeList(String searchkey, String keyword, int start, int end) {
		SqlSession session=null;
		List<NoticeDTO> list=null;
		try {
			session = MybatisManager.getInstance().openSession();
			Map<String,Object> map = new HashMap<>();
			map.put("searchkey", searchkey);
			map.put("keyword", "%"+keyword+"%");
			map.put("start", start);
			map.put("end", end);
			System.out.println(map);
			list = session.selectList("notice.list", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
		return list;
	}
	
	public void writeNotice(NoticeDTO dto) {
		SqlSession session = MybatisManager.getInstance().openSession();
		session.insert("notice.write", dto);
		session.commit();
		session.close();
	}

	public NoticeDTO viewNotice(int num) {
		SqlSession session = MybatisManager.getInstance().openSession();
		NoticeDTO dto = session.selectOne("notice.view", num);
		session.close();
		return dto;
	}
	
	public void readcountPlus(int num, HttpSession count_session) {
		SqlSession session=null;
		try {
			long read_time=0; 
			if(count_session.getAttribute("read_time_"+num)!=null) {
				read_time = (long)count_session.getAttribute("read_time_"+num);
			}
			long current_time = System.currentTimeMillis(); 
			
			session = MybatisManager.getInstance().openSession();
			if(current_time-read_time > 365*24*60*60*1000) {				
				session.update("notice.plusReadCount", num);
				session.commit();	
				
				count_session.setAttribute("read_time_"+num, current_time);
			}			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
	}

	public List<NoticeDTO> noticeOnlyList() {
		SqlSession session=null;
		List<NoticeDTO> list=null;
		try {
			session = MybatisManager.getInstance().openSession();
			list = session.selectList("notice.onlylist");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
		return list;
	}

	public void updateNotice(NoticeDTO dto) {
		SqlSession session = MybatisManager.getInstance().openSession();
		session.update("notice.update", dto);
		session.commit();
		session.close();
	}

	public void deleteNotice(int num) {
		SqlSession session = MybatisManager.getInstance().openSession();
		session.delete("notice.delete",num);
		session.commit();
		session.close();
	}

	public String fileName(int num) {
		String result="";
		SqlSession session=null;
		try {
			session = MybatisManager.getInstance().openSession();
			result = session.selectOne("notice.fileName", num);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
		return result;
	}

	public void downPlus(int num) {
		SqlSession session=null;
		try {
			session = MybatisManager.getInstance().openSession();
			session.update("notice.downPlus",num);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
	}
}
