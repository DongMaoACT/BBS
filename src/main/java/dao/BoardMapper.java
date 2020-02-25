package dao;

import model.Board;
import model.BoardRe;
import model.Data;

import java.util.List;
import java.util.Map;

/**
 * @author FT丶Kuroko
 * @date 2018/12/23 10:48
 */
public interface BoardMapper {
    int deleteByPrimaryKey(Integer boardId);

    int insert(Board record);

    int insertSelective(Board record);

    Board selectByPrimaryKey(Integer boardId);

    int updateByPrimaryKeySelective(Board record);

    int updateByPrimaryKey(Board record);

    List<Board> getAllBoard();

    List<BoardRe> getBoardMap();

    List<Data> getboardData(int boardId);
}