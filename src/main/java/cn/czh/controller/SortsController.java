package cn.czh.controller;

import cn.czh.service.SortsService;
import cn.czh.util.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("sorts")
public class SortsController {

    @Autowired
    private SortsService sortsService;

    /**
     * 查询导航栏数据
     * @return
     */
    @GetMapping("/list")
    public JsonResult list() {
        return JsonResult.success(sortsService.findSortAll());
    }

}
