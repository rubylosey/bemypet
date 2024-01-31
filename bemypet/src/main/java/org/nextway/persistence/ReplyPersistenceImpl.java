package org.nextway.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import org.nextway.domain.ReplyVO;

@Repository
public class ReplyPersistenceImpl implements ReplyPersistence {

	// 마이바티스
	@Inject
	private SqlSession sql;
	
	// 매퍼: replyMapper.xml에 있는 mapper 요소의 namespace 속성값 지정
	private static String namespace = "com.board.mappers.reply";

	// 댓글 목록
	@Override
	public List<ReplyVO> list(int bno) throws Exception {
	    return sql.selectList(namespace + ".replyList", bno);
	}
	
	// 댓글 조회
	@Override
	public ReplyVO replySelect(ReplyVO vo) throws Exception {
		return sql.selectOne(namespace + ".replySelect", vo);
	}

	// 댓글 작성
	@Override
	public void write(ReplyVO vo) throws Exception {
	    sql.insert(namespace + ".replyWrite", vo);
	}

	// 댓글 수정
	@Override
	public void modify(ReplyVO vo) throws Exception {
	    sql.update(namespace + ".replyModify", vo);
	}

	// 댓글 삭제
	@Override
	public void delete(ReplyVO vo) throws Exception {
	    sql.delete(namespace + ".replyDelete", vo);
	}

}
