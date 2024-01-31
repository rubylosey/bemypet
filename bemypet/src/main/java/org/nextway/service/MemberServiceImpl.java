package org.nextway.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import org.nextway.persistence.MemberPersistence;
import org.nextway.domain.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject
	private MemberPersistence memberPersistence;
	
	// 회원 목록
	@Override
	public List<MemberVO> list() throws Exception {
		return memberPersistence.list();
	}

	// 회원 가입
	@Override
	public void register(MemberVO vo) throws Exception {
		memberPersistence.register(vo);
	}
	
	// 회원 조회
	@Override
	public MemberVO view(String userId) throws Exception {
		return memberPersistence.view(userId);
	}
	
	// 로그인
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return memberPersistence.login(vo);
	}

	// 회원 수정
	@Override
	public void modify(MemberVO vo) throws Exception {
		memberPersistence.modify(vo);
	}
	
	// 회원 삭제
	@Override
	public void delete(MemberVO vo) throws Exception {
		memberPersistence.delete(vo);
	}
	
	// 아이디 중복 확인
	public MemberVO idCheck(String userId) throws Exception {
		return memberPersistence.idCheck(userId);
	}
	
	// 닉네임 중복 확인
	public MemberVO nickNameCheck(String nickName) throws Exception {
		return memberPersistence.nickNameCheck(nickName);
	}

}
