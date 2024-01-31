package org.bemypet.service;

import java.util.List;

import org.bemypet.domain.ReservVO;

public interface ReservService {
	
	// 예약 목록
	public List<ReservVO> list() throws Exception;
	
	// 예약 등록
	public void write(ReservVO rvo) throws Exception;

	// 예약 조회
	public ReservVO view(String userId) throws Exception;	
	
	// 예약 조회==>직원용
	public ReservVO view2(int num) throws Exception;	
	
	// 예약 수정
	public void modify(ReservVO rvo) throws Exception;
	
	//예약 삭제
	public void delete(int num) throws Exception;
	
	// 예약 승인
	public void reservOk(int num) throws Exception;
	
	// 예약 취소
	public void reservNg(int num) throws Exception;
	
	// 강아지 예약 등록 데이터
	public void awrite(ReservVO rvo) throws Exception;

}
