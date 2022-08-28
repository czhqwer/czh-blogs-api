package cn.czh.controller;

import cn.czh.dto.UserDto;
import cn.czh.service.UserService;
import cn.czh.util.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService userService;

    /**
     * 用户登录
     * @param userDto
     * @return
     */
    @PostMapping("/login")
    public JsonResult login(UserDto userDto) {
        return JsonResult.success(userService.login(userDto));
    }

    /**
     * 用户注册
     * @param userDto
     * @return
     */
    @PostMapping("/register")
    public JsonResult register(UserDto userDto) {
        userService.register(userDto);
        return JsonResult.success();
    }

    /**
     * 手机号是否被注册
     * @param userDto
     * @return
     */
    @GetMapping("/checkPhone")
    public JsonResult checkPhone(UserDto userDto) {
        return JsonResult.success(userService.checkPhone(userDto));
    }
}
