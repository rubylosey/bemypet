package org.bemypet.persistence;

import java.util.List;

import org.bemypet.domain.EmployeeVO;

public interface EmployeePersistence {
	
	// 직원 목록
		public List<EmployeeVO> list() throws Exception;
		
	// 직원 조회
	public EmployeeVO view(String empid) throws Exception;
		
	// 직원 등록
		public void register(EmployeeVO evo) throws Exception;
		
	// 아이디 중복 확인
		public EmployeeVO idCheck(String empid) throws Exception;

	// 로그인
	public EmployeeVO  login(EmployeeVO evo) throws Exception;
	
	// 회원 수정
	public void modify(EmployeeVO evo) throws Exception;
}
