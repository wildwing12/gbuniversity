package model.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import model.dto.ProfessorDTO;
import sqlmap.MybatisManager;

public class ProfessorDAO {

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

	public int proLogin(String proid, String passwd) {
		SqlSession session=null;
		int result=0;
		try {
			session=MybatisManager.getInstance().openSession();
			Map<String, Object> map = new HashMap<>();
			map.put("proid", proid);
			map.put("passwd", passwd);
			result=session.selectOne("prologin", map);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}
		return result;
	}

	public ProfessorDTO proinfo(String proid) {
		ProfessorDTO dto=null;
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			dto=session.selectOne("proinfo", proid);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}
		return dto;
	}

	public void updatePro(ProfessorDTO dto) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.update("updatePro",dto);
		session.commit();
		session.close();
	}

}
