package model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import model.dto.CartDTO;
import model.dto.ScoreDTO;
import sqlmap.MybatisManager;

public class ScoreDAO {

	public List<ScoreDTO> list(String stdid) {
		SqlSession session=null;
		List<ScoreDTO> list=null;
		try {
			session=MybatisManager.getInstance().openSession();
			list=session.selectList("gb2.allScoreList", stdid);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}
		return list;
	}

	public List<CartDTO> pro_inputList(String proname) {
		SqlSession session=null;
		List<CartDTO> list=null;
		try {
			session=MybatisManager.getInstance().openSession();
			list=session.selectList("gb2.input_list", proname);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
		return list;
	}

	public void inputScore(ScoreDTO dto) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.insert("gb2.insertScore", dto);
		session.commit();
		session.close();
	}

	public CartDTO view(int cnum) {
		SqlSession session=null;
		CartDTO dto=null;
		try {
			session=MybatisManager.getInstance().openSession();
			dto=session.selectOne("gb2.smallList",cnum);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}
		return dto;
	}

	public void changeShow(CartDTO dto2) {//cart테이블의 show값을 n으로 변경(점수 입력 완료 )
		SqlSession session=MybatisManager.getInstance().openSession();
		session.update("gb2.chaswg", dto2);
		session.commit();
		session.close();
		
	}

	public List<ScoreDTO> updateList(String proid) {
		SqlSession session=null;
		List<ScoreDTO> list=null;
		try {
			session=MybatisManager.getInstance().openSession();
			list=session.selectList("gb2.updateList",proid);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}
		return list;
	}

	public ScoreDTO updateView(int cnum) {
		ScoreDTO dto=null;
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			dto=session.selectOne("gb2.updateView", cnum);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}
		return dto;
	}

	public void updateScore(ScoreDTO dto) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.update("gb2.updateScore", dto);
		session.commit();
		session.close();
		
	}

	public List<ScoreDTO> totalList(String stdid, String term) {
		List<ScoreDTO> list=null;
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			Map<String,Object> map=new HashMap<>();
			map.put("stdid", stdid);
			map.put("term", term);
			list=session.selectList("gb2.totalList", map);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}
		return  list;
	}
	 public ScoreDTO getTerm(String stdid) {
		 SqlSession session=null;
		 ScoreDTO dto=null;
		 try {
			session=MybatisManager.getInstance().openSession();
			dto=session.selectOne("gb2.getTerm",stdid);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}
		return  dto;
	}
	
}
