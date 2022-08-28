package cn.czh.controller;

import cn.czh.query.ArticleQuery;
import cn.czh.service.ArticleService;
import cn.czh.util.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("articles")
public class ArticleController {

    @Autowired
    private ArticleService articleService;

    /**
     * 查询博文数据显示到页面，暂时数据库没那么多内容，后期再实现分页
     * @return
     */
    @PostMapping("/list")
    public JsonResult list(ArticleQuery query) {
        System.err.println(query);
        if (query.getSortId()!=null && query.getSortId().equals(1L))
            query.setSortId(null);
        return JsonResult.success(articleService.list(query));
    }
}
