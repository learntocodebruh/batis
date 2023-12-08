package com.crud.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardDAO {

	@Autowired
	SqlSession sqlSession;

	public int insertBoard(BoardVO vo) {
		return sqlSession.update("Board.insertBoard", vo);
	}
	// s는 앞에는 namespace, .찍고 id 이름, id는 board-mapper에 있다.

	public BoardVO getBoard(int seq){
		return sqlSession.selectOne("Board.getBoard", seq);
	}

	public List<BoardVO> getBoardList(){
		return sqlSession.selectList("Board.getBoardList");
	}

	public int deleteBoard(int seq){
		return sqlSession.delete("Board.deleteBoard", seq);
	}
	public int updateBoard(BoardVO vo){
		return sqlSession.update("Board.updateBoard", vo);
	}

}
