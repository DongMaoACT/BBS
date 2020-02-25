package controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.ApiOperation;
import model.Post;
import model.TopicRe;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import service.ForumService;
import service.UserService;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.Date;
import java.util.List;

/**
 * @author FT丶Kuroko
 * @date 2018/12/23 12:20
 */
@Controller
public class LoginController {
    @Autowired
    private UserService userService;
    @Autowired
    private ForumService forumService;
    @RequestMapping(value = "",method = RequestMethod.GET)
    @ApiOperation(value = "用户返回主页面",httpMethod = "GET")
    public String m() {
        return "forward:/index";

    }

    @RequestMapping(value = "/admin",method = RequestMethod.GET)
    @ApiOperation(value = "管理员页面",httpMethod = "GET")
    public ModelAndView admin(@RequestParam(required = false, defaultValue = "1") Integer page) {

        int PageSize = 8;
        PageHelper.startPage(page, PageSize);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("admin");
        List<TopicRe> list = forumService.getAllTopic();
        PageInfo<TopicRe> p = new PageInfo<>(list);
        modelAndView.addObject(p);
        modelAndView.addObject(list);
        return modelAndView;
    }

    @RequestMapping(value = "/user/login",method = RequestMethod.GET)
    @ApiOperation(value = "返回登录页面",httpMethod = "GET")
    public String login() {
        return "login";

    }

    @RequestMapping(value = "/index")
    @ApiOperation(value = "返回主页面",httpMethod = "GET")
    public ModelAndView main(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.setAttribute("userNum",userService.returnSumUser());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/index");
        modelAndView.addObject("newList",forumService.getNewerForum());
        modelAndView.addObject("hotList", forumService.getHotForum());
        modelAndView.addObject("recentUser", userService.RecentUserData());
        return modelAndView;
    }

    @RequestMapping(value = "/loginSuccess",method = RequestMethod.POST)
    @ApiOperation(value = "登录成功跳转",httpMethod = "POST")
    public ModelAndView loginSuccess(@RequestParam String username, HttpServletRequest request) {

            ModelAndView modelAndView = new ModelAndView();
            HttpSession session = request.getSession();
            userService.addCredit(username, 5);
            //获取ip和date
            userService.setLoginLogAndDate(username, new Date(System.currentTimeMillis()), request.getRemoteAddr());
            session.setAttribute("user", userService.findUserByName(username));
            if(userService.findUserByName(username).getUserType() ==2) {
                modelAndView.setViewName("redirect:/admin");
            }else
                modelAndView.setViewName("redirect:/");
            return modelAndView;

    }

    @RequestMapping(value = "/user/logout",method = RequestMethod.GET)
    @ApiOperation(value = "登出页面",httpMethod = "GET")
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.removeAttribute("user");
        return "redirect:/";
    }

    @ResponseBody
    @RequestMapping(value = "/checkLogin",method = RequestMethod.POST)
    @ApiOperation(value = "检查用户登录输入信息",httpMethod = "POST")
    public int checkLogin(@RequestParam String username,@RequestParam String password) {
        if (userService.findUserByName(username) != null) {
            if (userService.checkLogin(username, password)) {
                if (!userService.isLocked(username)) {
                    return 0;//ok
                }else return 1;//locked
            }else return 2;//wrong password;
        }else return 3;//wrong user;

    }
    @ResponseBody
    @ApiOperation(value = "ajax检查用户是否存在",httpMethod = "POST")
    @RequestMapping(value = "/checkUser", method = RequestMethod.POST)
    public boolean checkUser(@RequestParam String userName) {
        if (userService.findUserByName(userName) != null) {
            return true;
        }
        return false;
    }
}
