package dao;

import model.RecentUser;
import model.UserDetailed;

import java.util.List;

/**
 * @author FT丶Kuroko
 * @date 2018/12/23 09:19
 */
public interface UserDetailedMapper {
    int deleteByPrimaryKey(Integer userId);

    int insert(UserDetailed record);

    int insertSelective(UserDetailed record);

    UserDetailed selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(UserDetailed record);

    int updateByPrimaryKey(UserDetailed record);

    List<RecentUser> RecentUserData();
}