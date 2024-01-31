package org.bemypet.service;

import java.util.List;

import javax.inject.Inject;

import org.bemypet.domain.EmployeeVO;
import org.bemypet.persistence.EmployeePersistence;
import org.springframework.stereotype.Service;

@Service
public class EmployServiceImpl implements EmployeeService {
	
	@Inject
	public EmployeePersistence employeePersistence;
	
	// 직원 목록
	@Override
	public List<EmployeeVO> list() throws Exception {
		return employeePersistence.list();
	}
	
	// 직원 조회
	@Override
	public EmployeeVO view(String empid) throws Exception {
		return employeePersistence.view(empid);
	}


	// 직원 등록
	@Override
	public void register(EmployeeVO evo) throws Exception {
		employeePersistence.register(evo);
	}

	@Override
	public EmployeeVO idCheck(String empid) throws Exception {
		
		return employeePersistence.idCheck(empid);
	}

	@Override
	public EmployeeVO login(EmployeeVO evo) throws Exception {
		return employeePersistence.login(evo);
	}

	@Override
	public void modify(EmployeeVO evo) throws Exception {
		employeePersistence.modify(evo);
		
	}

	
	

}
