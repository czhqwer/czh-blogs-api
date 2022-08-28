package cn.czh.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TComments extends BaserDomain{
    private Long commentId;

    private Long userId;

    private Long articleId;

    private Long commentLikeCount;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date commentDate;

    private Long parentCommentId;

    private String commentContent;

}