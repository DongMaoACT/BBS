package dao;

import model.BoardManagerKey;

/**
 * @author FT丶Kuroko
 * @date 2018/12/23 11:30
 */
public interface BoardManagerMapper {
    int deleteByPrimaryKey(BoardManagerKey key);

    int insert(BoardManagerKey record);

    int insertSelective(BoardManagerKey record);
}