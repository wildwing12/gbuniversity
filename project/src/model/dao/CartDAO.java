package model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.dto.CartDTO;
import sqlmap.MybatisManager;

public class CartDAO {

	public List<CartDTO> list(String stdid) {
		List<CartDTO> list=null;
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			list=session.selectList("gb2.cartlist", stdid);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}
		return list;
	}

	public void insert_eval(CartDTO dto) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.update("gb2.cartInsert",dto);
		session.commit();
		session.close();
		
	}

	public CartDTO cart_detail(int cnum) {
		SqlSession session=null;
		CartDTO dto=null;
		try {
			session=MybatisManager.getInstance().openSession();
			dto=session.selectOne("gb2.cart_detail", cnum);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}
		return dto;
	}

	public List<CartDTO> check_eval(String proname) {
		List<CartDTO> check_eval=null;
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			check_eval=session.selectList("gb2.check_eval", proname);
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}
		return check_eval;
	}

	public CartDTO view(int cnum) {
		SqlSession session=null;
		CartDTO dto=null;
		try {
			session=MybatisManager.getInstance().openSession();
			dto=session.selectOne("gb2.view", cnum);
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}
		return dto;
	}

}
