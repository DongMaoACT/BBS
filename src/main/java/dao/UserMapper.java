package dao;

import model.User;

/**
 * @author FT丶Kuroko
 * @date 2018/12/23 09:31
 */
public interface UserMapper {
    int deleteByPrimaryKey(Integer userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    User selectByUsername(String username);

    int findUserTotalNum();

}