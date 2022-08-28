package cn.czh.service;

import cn.czh.domain.TUsers;
import cn.czh.dto.UserDto;

public interface UserService {

    TUsers login(UserDto userDto);

    void register(UserDto userDto);

    boolean checkPhone(UserDto userDto);

}
