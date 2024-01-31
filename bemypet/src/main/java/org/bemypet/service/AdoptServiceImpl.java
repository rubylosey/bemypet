package org.bemypet.service;

import java.util.List;

import javax.inject.Inject;

import org.bemypet.domain.AdoptVO;
import org.bemypet.persistence.AdoptPersistence;
import org.springframework.stereotype.Service;

@Service
public class AdoptServiceImpl implements AdoptService {
	
	@Inject
	private AdoptPersistence adoptPersistence;

	// 강아지 목록
	@Override
	public List<AdoptVO> getList() throws Exception {
		return adoptPersistence.getList();
	}
	
	// 강아지 조회
	@Override
	public AdoptVO getView(int dno) throws Exception {
		return adoptPersistence.getView(dno);
	}

	// 강아지 등록
	@Override
	public void register(AdoptVO avo) throws Exception {
		adoptPersistence.register(avo);
	}

	// 강아지 수정
	@Override
	public void modify(AdoptVO avo) throws Exception {
		adoptPersistence.modify(avo);
	}

	// 강아지 삭제
	@Override
	public void delete(int dno) throws Exception {
		adoptPersistence.delete(dno);
	}

	// 유기견 예약 화면
	@Override
	public AdoptVO aview(int dno) throws Exception {
		return adoptPersistence.aview(dno);
	}

	@Override
	public int dogCnt() throws Exception {
		return adoptPersistence.dogCnt();
	}

	@Override
	public int smCnt(String smCnt) throws Exception {
		return adoptPersistence.smCnt(smCnt);
	}

	@Override
	public int mdCnt(String mdCnt) throws Exception {
		return adoptPersistence.mdCnt(mdCnt);
	}

	@Override
	public int lgCnt(String lgCnt) throws Exception {
		return adoptPersistence.lgCnt(lgCnt);
	}

	@Override
	public int aareaCnt(String aareaCnt) throws Exception {
		return adoptPersistence.aareaCnt(aareaCnt);
	}

	@Override
	public int bareaCnt(String bareaCnt) throws Exception {
		return adoptPersistence.bareaCnt(bareaCnt);
	}

	@Override
	public int careaCnt(String careaCnt) throws Exception {
		return adoptPersistence.careaCnt(careaCnt);
	}

	@Override
	public int dareaCnt(String dareaCnt) throws Exception {
		return adoptPersistence.dareaCnt(dareaCnt);
	}

}
