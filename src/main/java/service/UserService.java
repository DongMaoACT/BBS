package service;

import model.RecentUser;
import model.User;
import model.UserDetailed;

import java.sql.Date;
import java.util.List;

/**
 * @author FT丶Kuroko
 * @date 2018/12/23 14:13
 */
public interface UserService {

    boolean checkLogin(String username, String password);

    int returnSumUser();

    User findUserByName(String username);

    void lockUser(String username);

    boolean isLocked(String username);

    void addCredit(String username, int creditNum);

    void setLoginLogAndDate(String username, Date date, String addr);

    void register(String username, String password);

    User selectByUserId(int id);

    UserDetailed selectImageByUserId(int id);

    void updateAddressOfPic(int userId,String address);

    UserDetailed findById(int userId);

    List<RecentUser> RecentUserData();

    void registerDetails(String email,String phone,String addr,String sex);
}
