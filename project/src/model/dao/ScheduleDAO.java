package model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.dto.ScheduleDTO;
import sqlmap.MybatisManager;

public class ScheduleDAO {


		public void updatePlan(ScheduleDTO dto) {
			SqlSession session=MybatisManager.getInstance().openSession();
			session.update("updatePlan",dto);
			session.commit();
			session.close();
			
		}

		public ScheduleDTO planList() {
			SqlSession session=null;
			ScheduleDTO dto=null;
			try {
				session=MybatisManager.getInstance().openSession();
				dto=session.selectOne("planList");
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				if(session!=null)session.close();
			}
			return dto;
		}

		public List<ScheduleDTO> schedule() {
			SqlSession session=null;
			List<ScheduleDTO> list=null;
			try {
				session=MybatisManager.getInstance().openSession();
				list=session.selectList("scheduleList");
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				if(session!=null)session.close();
			}
			return list;
		}

		public void insert(ScheduleDTO dto) {
			SqlSession session=MybatisManager.getInstance().openSession();
			session.insert("gb2.insert",dto);
			session.commit();
			session.close();
			
		}

		public void delete(int schnum) {
			SqlSession session=MybatisManager.getInstance().openSession();
			session.delete("gb2.delete",schnum);
			session.commit();
			session.close();
		}
}


