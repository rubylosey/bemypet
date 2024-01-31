package org.bemypet.service;

import java.util.List;

import javax.inject.Inject;

import org.bemypet.domain.ReservVO;
import org.bemypet.persistence.ReservPersistence;
import org.springframework.stereotype.Service;

@Service
public class ReservServiceImpl implements ReservService {
	
	@Inject
	private ReservPersistence reservPersistence;

	@Override
	public List<ReservVO> list() throws Exception {
		return reservPersistence.list();
	}
	
	// 예약 등록
	@Override
	public void write(ReservVO rvo) throws Exception {
		reservPersistence.write(rvo);
	}

	// 예약 조회
	@Override
	public ReservVO view(String userId) throws Exception {
		return reservPersistence.view(userId);
	}
	
	// 예약 조회==>직원용
	@Override
	public ReservVO view2(int num) throws Exception {
		return reservPersistence.view2(num);
	}

	// 예약 수정
	@Override
	public void modify(ReservVO rvo) throws Exception {
		reservPersistence.modify(rvo);
	}

	// 예약 삭제
	@Override
	public void delete(int num) throws Exception {
		reservPersistence.delete(num);
	}

	@Override
	public void reservOk(int num) throws Exception {
		reservPersistence.reservOk(num);
	}

	@Override
	public void reservNg(int num) throws Exception {
		reservPersistence.reservNg(num);
		
	}

	
	// 강아지 예약
	@Override
	public void awrite(ReservVO rvo) throws Exception {
		reservPersistence.awrite(rvo);
		
	}
	
	
	

}
