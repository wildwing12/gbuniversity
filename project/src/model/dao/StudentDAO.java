package model.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import model.dto.ProfessorDTO;
import model.dto.RegisterDTO;
import model.dto.StudentDTO;
import sqlmap.MybatisManager;


public class StudentDAO {

	public void join(StudentDTO dto) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.insert("join",dto);
		session.commit();
		session.close();
	}

	public int idchek(String stdid) {
		int reuslt=0;
		SqlSession session = MybatisManager.getInstance().openSession();
		try {
			reuslt=session.selectOne("idcheck",stdid);
			if(reuslt==1) {
				return 1;
			}else {
				return 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}
		return 2;
	}

	public int std_login(String stdid, String passwd) {
		SqlSession session = null;
		Map<String, Object> map = new HashMap<>();
		int std_login=0;
		try {
			session = MybatisManager.getInstance().openSession();
			map.put("stdid", stdid);
			map.put("passwd", passwd);
			std_login = session.selectOne("std_login", map);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}
		
		return std_login;
	}

	public StudentDTO studentInfo(String stdid) {
		SqlSession session=null;
		StudentDTO dto=null;
		try {
			session=MybatisManager.getInstance().openSession();
			dto=session.selectOne("stdInfo", stdid);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}
		
		return dto;
	}

	public void insertRegister(RegisterDTO dto) {
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			session.insert("insertRegister",dto);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}
		
	}

	public int proidchek(String proid) {
		int reuslt=0;
		SqlSession session = MybatisManager.getInstance().openSession();
		try {
			reuslt=session.selectOne("proidcheck",proid);
			if(reuslt==1) {
				return 1;
			}else {
				return 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}
		return 2;
	}

	public void pro_join(ProfessorDTO dto) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.insert("pro_join",dto);
		session.commit();
		session.close();
		
	}

	public void stdupdate(StudentDTO dto) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.update("stdUpdate", dto);
		session.commit();
		session.close();
	}

	public int compare(int subcode) {
		int result=0;
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			result=session.selectOne("compare1", subcode);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}
		return result;
	}

	public int compar2(int subcode) {
		int result=0;
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			result=session.selectOne("compare2", subcode);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}
		return result;
	}

	public String forgotid(String stdname, String stdemail) {
		String stdid=null;
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			Map<String, Object> map=new HashMap<>();
			map.put("stdname", stdname);
			map.put("stdemail", stdemail);
			stdid=session.selectOne("forgotid",map);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}
		return stdid;
	}

	public int forgotpw(String stdid, String hp) {
		int forgotpw=0;
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			Map<String, Object> map=new HashMap<>();
			map.put("stdid", stdid);
			map.put("hp", hp);
			forgotpw=session.selectOne("forgotpw",map);
		} catch (Exception e) {
			e.printStackTrace();
			
		}finally {
			if(session!=null)session.close();
		}
		return forgotpw;
	}

	public void updatePw(StudentDTO dto) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.update("updatePw",dto);
		session.commit();
		session.close();
		
	}

	public String proforgotid(String proname, String email) {
		String proid=null;
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			Map<String, Object> map=new HashMap<>();
			map.put("proname", proname);
			map.put("email", email);
			proid=session.selectOne("proforgotid",map);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}
		return proid;
	}

	public int proforgotpw(String proid, String hp) {
		int forgotpw=0;
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			Map<String, Object> map=new HashMap<>();
			map.put("proid", proid);
			map.put("hp", hp);
			forgotpw=session.selectOne("proforgotpw",map);
		} catch (Exception e) {
			e.printStackTrace();
			
		}finally {
			if(session!=null)session.close();
		}
		return forgotpw;
	}

	public void pro_updatePw(ProfessorDTO dto) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.update("proupdatePw",dto);
		session.commit();
		session.close();
		
	}

}
