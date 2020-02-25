package service.impl;

import dao.*;
import model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.ForumService;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.List;

/**
 * @author FT丶Kuroko
 * @date 2018/12/23 15:48
 */
@Service
public class ForumServiceI implements ForumService {
    @Autowired
    private TopicMapper topicMapper;
    @Autowired
    private BoardMapper boardMapper;
    @Autowired
    private PostMapper postMapper;
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private UserDetailedMapper userDetailedMapper;

    public void addTopic(Topic topic) {
        topicMapper.insertSelective(topic);
        Board board = boardMapper.selectByPrimaryKey(topic.getBoardId());
        board.setTopicNum(board.getTopicNum() + 1);
        boardMapper.updateByPrimaryKeySelective(board);
    }

    public void removeTopic(int TopicId) {
        Topic topic = topicMapper.selectByPrimaryKey(TopicId);
        //删除相关回复贴
        topicMapper.deleteByPrimaryKey(TopicId);
        List<Post> postList = postMapper.selectByTopicId(TopicId);
        for (Post p :
                postList) {
            postMapper.deleteByPrimaryKey(p.getPostId());
        }
        //论坛板块主题帖子数-1
        Board board = boardMapper.selectByPrimaryKey(topic.getBoardId());
        board.setTopicNum(board.getTopicNum() - 1);
        boardMapper.updateByPrimaryKeySelective(board);
        //扣50积分
        User user = userMapper.selectByPrimaryKey(topic.getUserId());
        user.setCredit(user.getCredit() - 50 >= 0 ? user.getCredit() - 50 : 0);
        userMapper.updateByPrimaryKey(user);
    }

    public void addPost(Post post) {

        //插入回复信息
        UserDetailed userDetailed = userDetailedMapper.selectByPrimaryKey(post.getUserId());
        post.setImagePath(userDetailed.getImagePath());
        post.setCreateTime(new Timestamp(System.currentTimeMillis()));
        postMapper.insertSelective(post);
        //积分+5
        User user = userMapper.selectByPrimaryKey(post.getUserId());
        user.setCredit(user.getCredit() + 5);
        userMapper.updateByPrimaryKeySelective(user);
        //主题回复数+1，更新回复时间
        Topic topic = topicMapper.selectByPrimaryKey(post.getTopicId());
        topic.setTopicReplies(topic.getTopicReplies() + 1);
        topic.setLastPost(new Timestamp(System.currentTimeMillis()));
        topicMapper.updateByPrimaryKeySelective(topic);
    }

    public void setStarTopic(int TopicId) {
        Topic topic = topicMapper.selectByPrimaryKey(TopicId);
        topic.setDigest(Topic.IS_DISGEST);
        topicMapper.updateByPrimaryKeySelective(topic);
    }

    public List<Topic> getNewerForum() {
        return topicMapper.selectOrderBydatetime();
    }

    public List<Topic> getHotForum() {
        return topicMapper.selectOrderByReply();
    }

    public Topic getSelectTopic(int TopicId) {
        return topicMapper.selectByPrimaryKey(TopicId);
    }

    public List<Post> getAllPostReplyByTopicId(int TopicId) {
        List<Post> list = postMapper.selectByTopicId(TopicId);
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getPostType() == Post.TYPE_MAIN) {
                list.remove(i);
            }
        }
        for (Post p : list) {
            p.setPostTitle(userMapper.selectByPrimaryKey(p.getUserId()).getUserName());

        }
        return list;
    }

    public void addViewed(int TopicId) {
        Topic topic = topicMapper.selectByPrimaryKey(TopicId);
        topic.setTopicViews(topic.getTopicViews() + 1);
        topicMapper.updateByPrimaryKeySelective(topic);
    }

    public Post getHostTopicInnerText(int topicId, int userId) {
        return postMapper.getHostTopicInnerText(topicId, userId);
    }

    //删除回复贴,主题回复数-1，删除post
    public void deletePost(int PostId) {
        Post post = postMapper.selectByPrimaryKey(PostId);
        Topic topic = topicMapper.selectByPrimaryKey(post.getTopicId());
        topic.setTopicReplies(topic.getTopicReplies() - 1);
        topicMapper.updateByPrimaryKeySelective(topic);
        postMapper.deleteByPrimaryKey(PostId);
    }

    //管理员对帖子进行加精操作
    public void updateTopic(int topicId) {
        Topic topic = topicMapper.selectByPrimaryKey(topicId);
        topic.setDigest(1);
        topicMapper.updateByPrimaryKeySelective(topic);
    }

    //管理员对帖子进行取消加精操作
    public void reupdateTopic(int topicId) {
        Topic topic = topicMapper.selectByPrimaryKey(topicId);
        topic.setDigest(0);
        topicMapper.updateByPrimaryKeySelective(topic);
    }

    //管理员对帖子进行置顶操作
    public void setTop(int topicId) {
        Topic topic1 = topicMapper.selectByTop(1);
        topic1.setTop(0);
        topicMapper.updateByPrimaryKeySelective(topic1);
        Topic topic = topicMapper.selectByPrimaryKey(topicId);
        topic.setTop(1);
        topicMapper.updateByPrimaryKeySelective(topic);
    }

    //更新帖子内容
    public void updateContext(int topicId, int userId, String title, String context) {
        Topic topic = topicMapper.selectByPrimaryKey(topicId); //获取帖子
        topic.setTopicTitle(new EncodingTool().encodeStr(title));
        topicMapper.updateByPrimaryKeySelective(topic);
        Post post = postMapper.getHostTopicInnerText(topicId, userId); //获取发帖人记录
        if (post != null) {
            post.setPostText(new EncodingTool().encodeStr(context));
        }
        postMapper.updateByPrimaryKeySelective(post);


    }

    public List<TopicRe> getAllTopic() {
        return topicMapper.getAllTopic();
    }

    public List<Board> getAllboard() {
        return boardMapper.getAllBoard();
    }

    public int selectLastInsert() {
        return topicMapper.selectLastInsertId();
    }

    @Override
    public List<BoardRe> getBoardMap() {
        return boardMapper.getBoardMap();
    }

    @Override
    public List<Data> getBoardData(int boardId) {
        return boardMapper.getboardData(boardId);
    }

    @Override
    public List<Topic> selectByuserId(int userId) {
        return topicMapper.selectByuserId(userId);
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
