package cn.czh.vo;

import cn.czh.domain.TLabels;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ArticleVo {
    private Long articleId;

    private Long userId;

    private Long articleViews;

    private Long articleCommentCount;

    @JsonFormat(pattern="yyyy-MM-dd",timezone="GMT+8")
    private Date articleDate;

    private Long articleLikeCount;

    private String articleTitle;

    private String articleContent;

    private String articleImage;

    private String articleDescription;

    private String userProfilePhoto;

    private String userNickname;

    private String sortName;

    private List<TLabels> labels = new ArrayList<>();



}
