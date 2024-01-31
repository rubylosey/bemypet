package org.nextway.persistence;

import java.util.List;

import org.nextway.domain.ReplyVO;

public interface ReplyPersistence {
	
	// 댓글 목록
	public List<ReplyVO> list(int bno) throws Exception;
	
	// 단일 조회
	public ReplyVO replySelect(ReplyVO vo) throws Exception;

	// 댓글 작성
	public void write(ReplyVO vo) throws Exception;

	// 댓글 수정
	public void modify(ReplyVO vo) throws Exception;

	// 댓글 삭제
	public void delete(ReplyVO vo) throws Exception;
	
}
