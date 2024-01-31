package org.nextway.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import org.nextway.persistence.BoardPersistence;
import org.nextway.domain.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Inject
	private BoardPersistence boardPersistence;

	// 게시물 목록
	@Override
	public List<BoardVO> list() throws Exception {
		return boardPersistence.list();
	}

	// 게시물 작성
	@Override
	public void write(BoardVO vo) throws Exception {
		boardPersistence.write(vo);
	}
	
	// 게시물 조회
	@Override
	public BoardVO view(int bno) throws Exception {
		return boardPersistence.view(bno);
	}
	
	// 게시물 조회수 증가
	@Override
	public void updateReadCount(int bno) throws Exception {
		boardPersistence.updateReadCount(bno);
	}
	
	// 게시물 수정
	@Override
	public void modify(BoardVO vo) throws Exception {
		boardPersistence.modify(vo);
	}

	// 게시물 삭제
	@Override
	public void delete(int bno) throws Exception {
		boardPersistence.delete(bno);
	}
	
	// 좋음 증가
	@Override
	public void upLike(int bno) throws Exception {
		boardPersistence.upLike(bno);
	}
	
	// 싫음 증가
	@Override
	public void upHate(int bno) throws Exception {
		boardPersistence.upHate(bno);
	}
	
	// 게시물 총 갯수
	@Override
	public int count() throws Exception {
		return boardPersistence.count();
	}
	
	// 게시물 목록 + 페이징
	@Override
	public List listPage(int displayPost, int postNum) throws Exception {
		return boardPersistence.listPage(displayPost, postNum);
	}
	
	// 게시물 목록 + 페이징 + 검색
	@Override
	public List<BoardVO> listPageSearch(int displayPost, int postNum, String searchType, String keyword) throws Exception {
		return  boardPersistence.listPageSearch(displayPost, postNum, searchType, keyword);
	}
	
	// 검색 조건에 맞는 게시물 총 갯수
	@Override
	public int searchCount(String searchType, String keyword) throws Exception {
		return boardPersistence.searchCount(searchType, keyword);
	}

}
