package org.bemypet.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.bemypet.domain.AdoptVO;
import org.springframework.stereotype.Repository;

@Repository
public class AdoptPersistencImpl implements AdoptPersistence {
	
	@Inject
	private SqlSession sql;
	
	private static String namespace = "org.bemypet.mappers.adopt";

	// 강아지 목록
	@Override
	public List<AdoptVO> getList() throws Exception {
		return sql.selectList(namespace +".list");
	}
	
	// 강아지 조회
	@Override
	public AdoptVO getView(int dno) throws Exception {
		return sql.selectOne(namespace + ".view", dno);
	}

	// 강아지 등록
	@Override
	public void register(AdoptVO avo) throws Exception {
		sql.insert(namespace+".register", avo);
	}
	
	// 강아지 수정
	@Override
	public void modify(AdoptVO avo) throws Exception {
		sql.update(namespace + ".modify", avo);
	}

	// 강아지 삭제
	@Override
	public void delete(int dno) throws Exception {
		sql.delete(namespace + ".delete", dno);
	}

	// 유기견 예약 화면
	@Override
	public AdoptVO aview(int dno) throws Exception {
		return sql.selectOne(namespace + ".aview", dno);
	}

	@Override
	public int dogCnt() throws Exception {
		return sql.selectOne(namespace + ".dogCnt");
	}

	@Override
	public int smCnt(String smCnt) throws Exception {
		return sql.selectOne(namespace + ".smCnt", smCnt);
	}

	@Override
	public int mdCnt(String mdCnt) throws Exception {
		return sql.selectOne(namespace + ".mdCnt", mdCnt);
	}

	@Override
	public int lgCnt(String lgCnt) throws Exception {
		return sql.selectOne(namespace + ".lgCnt", lgCnt);
	}

	@Override
	public int aareaCnt(String aareaCnt) throws Exception {
		return sql.selectOne(namespace + ".aareaCnt", aareaCnt);
	}

	@Override
	public int bareaCnt(String bareaCnt) throws Exception {
		return sql.selectOne(namespace + ".bareaCnt", bareaCnt);
	}

	@Override
	public int careaCnt(String careaCnt) throws Exception {
		return sql.selectOne(namespace + ".careaCnt", careaCnt);
	}

	@Override
	public int dareaCnt(String dareaCnt) throws Exception {
		return sql.selectOne(namespace + ".dareaCnt", dareaCnt);
	}

	

}
