package cn.czh.service;

import cn.czh.query.ArticleQuery;
import cn.czh.vo.ArticleVo;
import com.github.pagehelper.PageInfo;

import java.util.Map;


public interface ArticleService {
    PageInfo<ArticleVo> list(ArticleQuery query);
}
