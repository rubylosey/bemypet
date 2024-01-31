package org.bemypet.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.bemypet.domain.ReservVO;
import org.springframework.stereotype.Repository;

@Repository
public class ReservPersistenceImpl implements ReservPersistence {

	@Inject
	private SqlSession sql;
	
	private static String namespace="org.bemypet.mappers.reserv";

	// 예약 목록
	@Override
	public List<ReservVO> list() throws Exception {
		return sql.selectList(namespace+".list");
	}
	
	// 예약 등록
	@Override
	public void write(ReservVO rvo) throws Exception {
		sql.insert(namespace+".write", rvo);
	}

	// 예약 조회
	@Override
	public ReservVO view(String userId) throws Exception {
		return sql.selectOne(namespace+".view", userId);
	}
	
	// 예약 조회==>직원용
	@Override
	public ReservVO view2(int num) throws Exception {
		return sql.selectOne(namespace+".view2", num);
	}	

	@Override
	public void modify(ReservVO rvo) throws Exception {
		sql.update(namespace+".modify", rvo);
	}

	@Override
	public void delete(int num) throws Exception {
		sql.delete(namespace+".delete",num);
	}

	@Override
	public void reservOk(int num) throws Exception {
		sql.update(namespace+".approv", num);
		
	}

	@Override
	public void reservNg(int num) throws Exception {
		sql.update(namespace+".cancel", num);
		
	}

	
	// 강아지 예약
	@Override
	public void awrite(ReservVO rvo) throws Exception {
		sql.insert(namespace+".awrite", rvo);
	}
	

	

}
