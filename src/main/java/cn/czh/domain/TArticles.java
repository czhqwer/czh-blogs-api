package cn.czh.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TArticles extends BaserDomain{
    private Long articleId;

    private Long userId;

    private Long articleViews;

    private Long articleCommentCount;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date articleDate;

    private Long articleLikeCount;

    private String articleTitle;

    private String articleContent;

    private String articleDescription;

    private String articleImage;
}