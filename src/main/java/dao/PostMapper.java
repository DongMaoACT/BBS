package dao;

import model.Post;

import java.util.List;

/**
 * @author FT丶Kuroko
 * @date 2018/12/23 10:10
 */
public interface PostMapper {
    int deleteByPrimaryKey(Integer postId);

    int insert(Post record);

    int insertSelective(Post record);

    Post selectByPrimaryKey(Integer postId);

    int updateByPrimaryKeySelective(Post record);

    int updateByPrimaryKeyWithBLOBs(Post record);

    int updateByPrimaryKey(Post record);

    List<Post> selectByTopicId(int topicId);

    Post getHostTopicInnerText(int topicId, int userId);
}