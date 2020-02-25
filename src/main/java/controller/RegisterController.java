package controller;


import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import service.ForumService;
import service.UserService;
import util.UploadPictureUtil;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

/**
 * @author FT丶Kuroko
 * @date 2018/12/23 11:47
 */
@Controller
public class RegisterController {
    @Autowired
    private UserService userService;
    @Autowired
    private ForumService forumService;
    @ApiOperation(value = "返回注册页面",httpMethod = "GET")
    @RequestMapping(value = "/user/register",method = RequestMethod.GET)
    public String reg() {
        return "register";

    }

    @ApiOperation(value = "注册跳转",httpMethod = "POST")
    @RequestMapping(value = "/registerPro", method = RequestMethod.POST)
    public String register(@RequestParam String username, @RequestParam String password,@RequestParam String email,
                           @RequestParam String phone,@RequestParam String addr,@RequestParam String sex) {
        userService.register(username,password);
        userService.registerDetails(email, phone, addr,new EncodingTool().encodeStr(sex));
        return "redirect:/user/login";
    }

    @RequestMapping(value = "/user/detail/{userId}",method = RequestMethod.GET)
    @ApiOperation(value = "返回个人页面信息",httpMethod = "GET")
    public String userDetail(@PathVariable int userId, Model model) {
        model.addAttribute("username", userService.selectByUserId(userId).getUserName());
        model.addAttribute("info", userService.findById(userId));
        model.addAttribute("topicInfo", forumService.selectByuserId(userId));
        return "userInfo";
    }

    @ResponseBody
    @ApiOperation(value = "上传图片接口",httpMethod = "POST")
    @RequestMapping(value = "/upload/usericon", method = RequestMethod.POST)
    public Object uploadIcon(HttpServletRequest request, MultipartFile file,@RequestParam String id) throws IOException {
        String path= UploadPictureUtil.addMutiparFile(file,request.getSession().getServletContext().getRealPath("/"));
        Map result=new HashMap();
        result.put("path",path);
        result.put("id", id);
        //保存图片链接到数据库
        userService.updateAddressOfPic(Integer.valueOf(id), path);
        return  result;

    }

    //requestParam转码
    public class EncodingTool {
        String encodeStr(String str) {
            try {
                return new String(str.getBytes("ISO-8859-1"), "UTF-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
                return null;
            }

        }
    }
}
