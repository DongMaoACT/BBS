package dao;

import model.Topic;
import model.TopicRe;

import java.util.List;

/**
 * @author FT丶Kuroko
 * @date 2018/12/23 09:56
 */
public interface TopicMapper {
    int deleteByPrimaryKey(Integer topicId);

    int insert(Topic record);

    int insertSelective(Topic record);

    Topic selectByPrimaryKey(Integer topicId);

    Topic selectByTop(Integer top);

    int updateByPrimaryKeySelective(Topic record);

    int updateByPrimaryKey(Topic record);

    List<Topic> selectOrderBydatetime();

    List<Topic> selectOrderByReply();

    int selectLastInsertId();

    List<Topic> selectByuserId(int userId);

    List<TopicRe> getAllTopic();

}