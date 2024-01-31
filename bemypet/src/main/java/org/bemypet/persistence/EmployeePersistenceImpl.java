package org.bemypet.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.bemypet.domain.EmployeeVO;
import org.springframework.stereotype.Repository;

@Repository
public class EmployeePersistenceImpl implements EmployeePersistence {

	// 마이바티스
	@Inject
	private SqlSession sql;
	
	// 매퍼 :
	private static String namespace = "org.bemypet.mappers.employee";

	// 직원 목록
	@Override
	public List<EmployeeVO> list() throws Exception {
		return sql.selectList(namespace+".list");
	}
	
	// 직원 조회
	@Override
	public EmployeeVO view(String empid) throws Exception {
		return sql.selectOne(namespace+".view", empid);
	}
	
	
	// 직원 등록
	@Override	
	public void register(EmployeeVO evo) throws Exception {
		sql.insert(namespace+".register", evo);
		
	}

	public EmployeeVO idCheck(String empid) throws Exception {
		
		return sql.selectOne(namespace+".idCheck", empid);
	}

	@Override
	public EmployeeVO login(EmployeeVO evo) throws Exception {
		
		return sql.selectOne(namespace+".login", evo);
	}

	// 직원 수정
	@Override
	public void modify(EmployeeVO evo) throws Exception {
		sql.update(namespace+".modify", evo);
		
	}


	

	

}
