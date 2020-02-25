package service;

import model.*;

import java.util.List;

/**
 * @author FT丶Kuroko
 * @date 2018/12/23 14:56
 */
public interface ForumService {
    //发表主题,积分加10，板块主题帖子加1
    void addTopic(Topic topic);
    //板块主题帖子减一，扣50积分，删除帖子和其回复帖子
    void removeTopic(int TopicId);
    //用户积分加5，帖子回复数加1，更新最后回复时间
    void addPost(Post post);
    //设置精华帖子
    void setStarTopic(int TopicId);

    List<Topic> getNewerForum();

    List<Topic> getHotForum();

    Topic getSelectTopic(int TopicId);

    List<Post> getAllPostReplyByTopicId(int TopicId);

    void addViewed(int TopicId);

    Post getHostTopicInnerText(int topicId, int userId);

    void deletePost(int PostId);

    void updateTopic(int topicId);

    void reupdateTopic(int topicId);

    void setTop(int topicId);

    void updateContext(int userId,int topicId,String text,String title);

    List<TopicRe> getAllTopic();

    List<Board> getAllboard();

    int selectLastInsert();

    List<BoardRe> getBoardMap();
    //返回整合Data的board对象
    List<Data> getBoardData(int boardId);

    List<Topic> selectByuserId(int userId);
}
