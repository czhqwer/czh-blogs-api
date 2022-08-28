package cn.czh.service.impl;

import cn.czh.mapper.TArticlesMapper;
import cn.czh.mapper.TLabelsMapper;
import cn.czh.query.ArticleQuery;
import cn.czh.service.ArticleService;
import cn.czh.vo.ArticleVo;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    private TArticlesMapper articlesMapper;

    @Autowired
    private TLabelsMapper labelsMapper;

    @Override
    public PageInfo<ArticleVo> list(ArticleQuery query) {

        PageHelper.startPage(query.getCurrentPage(), query.getPageSize());
        List<ArticleVo> articleVos = articlesMapper.findAllArticleVoBySortId(query.getSortId());
        articleVos.stream().forEach(n -> n.setLabels(labelsMapper.selectLableListByArticleId(n.getArticleId())));
        PageInfo<ArticleVo> pageInfo = new PageInfo<>(articleVos);
        return pageInfo;
    }
}
