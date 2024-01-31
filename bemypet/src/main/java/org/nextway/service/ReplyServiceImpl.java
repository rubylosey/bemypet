package org.nextway.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import org.nextway.persistence.BoardPersistence;
import org.nextway.persistence.ReplyPersistence;
import org.nextway.domain.ReplyVO;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Inject
	private ReplyPersistence replyPersistence;
	@Inject
	private BoardPersistence boardPersistence;

	// 댓글 목록
	@Override
	public List<ReplyVO> list(int bno) throws Exception {
	    return replyPersistence.list(bno);
	}
	
	// 댓글 조회
	@Override
	public ReplyVO replySelect(ReplyVO vo) throws Exception {
		return replyPersistence.replySelect(vo);
	}

	// 댓글 작성
	@Transactional
	@Override
	public void write(ReplyVO vo) throws Exception {
		boardPersistence.updateReplyCnt(vo.getBno(), 1);
		replyPersistence.write(vo);
	}

	// 댓글 수정
	@Override
	public void modify(ReplyVO vo) throws Exception {
		replyPersistence.modify(vo);
	}

	// 댓글 삭제
	@Transactional
	@Override
	public void delete(ReplyVO vo) throws Exception {
		boardPersistence.updateReplyCnt(vo.getBno(), -1);
		replyPersistence.delete(vo);
	}

}
