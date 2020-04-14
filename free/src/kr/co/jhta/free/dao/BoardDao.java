package kr.co.jhta.free.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.co.jhta.free.util.IbatisUtil;
import kr.co.jhta.free.vo.Board;
import kr.co.jhta.free.vo.BoardType;

public class BoardDao {

	private SqlMapClient sqlmap = IbatisUtil.getSqlMap();
	
	public void insertBoard(Board board) throws SQLException {
		sqlmap.insert("board.insertBoard", board);
	}
	
	@SuppressWarnings("unchecked")
	public List<Board> getAllBoards () throws SQLException {
		return sqlmap.queryForList("board.getAllBoards");
	} 
	
	@SuppressWarnings("unchecked")
	public List<Board> getRecentBoards() throws SQLException {
		return sqlmap.queryForList("board.getRecentBoards");
	}
	
	@SuppressWarnings("unchecked")
	public List<BoardType> getAllBoardType() throws SQLException {
		return sqlmap.queryForList("board.getAllBoardType");
	}
	
	public Board getBoardByNo (int boardNo) throws SQLException {
		return (Board) sqlmap.queryForObject("board.getBoardByNo", boardNo);
	}
	
	public void deleteBoard (int boardNo) throws SQLException {
		sqlmap.delete("board.deleteBoard", boardNo);
	}
	
	public void upadateBoard (Board board) throws SQLException {
		sqlmap.update("board.upadateBoard",board);
	}
} 
