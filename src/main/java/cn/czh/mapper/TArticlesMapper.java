package cn.czh.mapper;

import cn.czh.domain.TArticles;
import cn.czh.vo.ArticleVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TArticlesMapper {
    int deleteByPrimaryKey(Long articleId);

    int insert(TArticles record);

    List<TArticles> selectAll();

    int updateByPrimaryKey(TArticles record);


    List<ArticleVo> findAllArticleVoBySortId(Long sortId);

}