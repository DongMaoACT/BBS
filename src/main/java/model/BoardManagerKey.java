package model;

import java.io.Serializable;

/**
 * @author FT丶Kuroko
 * @date 2018/12/23 13:16
 */
public class BoardManagerKey implements Serializable {
    private Integer boardId;

    private Integer userId;

    public Integer getBoardId() {
        return boardId;
    }

    public void setBoardId(Integer boardId) {
        this.boardId = boardId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}