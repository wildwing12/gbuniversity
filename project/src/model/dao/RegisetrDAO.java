package model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.dto.RegisterDTO;
import sqlmap.MybatisManager;

public class RegisetrDAO {

	public List<RegisterDTO> registerList() {
		SqlSession session= null;
		List<RegisterDTO> list=null;
		try {
			session=MybatisManager.getInstance().openSession();
			list=session.selectList("resiterlist");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}
		return list;
	}

	public List<RegisterDTO> registerList2(String stdid) {
		SqlSession session=null;
		List<RegisterDTO> list2=null;
		try {
			session=MybatisManager.getInstance().openSession();
			list2=session.selectList("resiterlist2", stdid);
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}
		return list2;
	}

	public void delete_sub(int cnum) {
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			session.delete("deleteRegister",cnum);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}
		
	}

	public void insertSub(RegisterDTO dto) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.insert("insertSub",dto);
		session.commit();
		session.close();
	}

	public List<RegisterDTO> subList() {
		List<RegisterDTO> list=null;
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			list=session.selectList("subList");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}
		return list;
	}

	public void deleteSubject(int subcode) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.delete("gb2.deleteSubject", subcode);
		session.commit();
		session.close();
		
	}

}
