package controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.ApiOperation;
import model.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import service.ForumService;

import java.util.List;


/**
 * @author FT丶Kuroko
 * @date 2018/12/23 15:20
 */
@Controller
public class BoardManageController {
    @Autowired
    private ForumService forumService;
    @RequestMapping(value = "/board",method = RequestMethod.GET)
    @ApiOperation(value = "返回板块页面",httpMethod = "GET")
    public String board(Model model) {
        model.addAttribute(forumService.getBoardMap());
        return "board";
    }

    @RequestMapping(value = "/board/{boardId}")
    @ApiOperation(value = "根据id获取板块",httpMethod = "GET")
    public String boardIn(Model model ,@PathVariable int boardId,@RequestParam(required = false, defaultValue = "1") Integer page) {
        PageHelper.startPage(page, 5);
        List<Data> list=forumService.getBoardData(boardId);
        PageInfo<Data> p = new PageInfo<>(list);
        model.addAttribute(p);
        model.addAttribute("boardId", boardId);
        return "Inboard";
    }
}
