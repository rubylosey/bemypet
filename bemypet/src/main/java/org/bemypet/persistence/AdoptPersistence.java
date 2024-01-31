package org.bemypet.persistence;

import java.util.List;

import org.bemypet.domain.AdoptVO;

public interface AdoptPersistence {

	// 강아지 목록
	public List<AdoptVO> getList() throws Exception;
	
	// 강아지 조회
	public AdoptVO getView(int dno) throws Exception;
	
	// 강아지 등록
	public void register(AdoptVO avo) throws Exception;
	
	// 강아지 수정
	public void modify(AdoptVO avo) throws Exception;
	
	// 강아지 삭제
	public void delete(int dno) throws Exception;
	
	// 유기견 예약 화면
	public AdoptVO aview(int dno) throws Exception;
	
	
	// 유기견 총 마리수
	public int dogCnt() throws Exception;
	
	// 소형견 마리수
	public int smCnt(String smCnt) throws Exception;
	
	// 중형견 마리수
	public int mdCnt(String mdCnt) throws Exception;
	
	// 대형견 마리수
	public int lgCnt(String lgCnt) throws Exception;
	
	// A구역 마리수
	public int aareaCnt(String aareaCnt) throws Exception;
	
	// B구역 마리수
	public int bareaCnt(String bareaCnt) throws Exception;
	
	// C구역 마리수
	public int careaCnt(String careaCnt) throws Exception;

	// D구역 마리수
	public int dareaCnt(String dareaCnt) throws Exception;
	
}
