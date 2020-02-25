package dao;

import model.LoginLog;

/**
 * @author FT丶Kuroko
 * @date 2018/12/23 10:20
 */
public interface LoginLogMapper {
    int deleteByPrimaryKey(Integer loginLogId);

    int insert(LoginLog record);

    int insertSelective(LoginLog record);


    int updateByPrimaryKeySelective(LoginLog record);

    int updateByPrimaryKey(LoginLog record);

}