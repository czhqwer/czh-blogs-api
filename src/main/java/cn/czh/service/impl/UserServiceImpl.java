package cn.czh.service.impl;

import cn.czh.domain.TUsers;
import cn.czh.dto.UserDto;
import cn.czh.exception.BlogsException;
import cn.czh.mapper.TUsersMapper;
import cn.czh.service.UserService;
import cn.czh.util.ParamUtil;
import cn.czh.util.RequestUtil;
import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.util.StringUtils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private TUsersMapper usersMapper;

    @Override
    public TUsers login(UserDto userDto) {
        if(ParamUtil.paramIsNull(userDto.getAccount(),userDto.getUserPassword()))
            throw new BlogsException(BlogsException.CODE_PARAM_NULL_ERROR, BlogsException.MSG_PARAM_NULL_ERROR);
        userDto.setUserEmail(userDto.getAccount());
        userDto.setUserTelephoneNumber(userDto.getAccount());
        TUsers user = usersMapper.findUserByPhoneOrEmail(userDto.getUserEmail(), userDto.getUserTelephoneNumber());
        if (user == null || !user.getUserPassword().equals(new Md5Hash(userDto.getUserPassword()).toString()))
            throw new BlogsException(BlogsException.CODE_LOGIN_ERROR, BlogsException.MSG_LOGIN_ERROR);
        user.setUserPassword("");
        return user;
    }

    @Override
    public void register(UserDto userDto) {
//        if (StringUtils.isNotBlank(userDto.getUserName()) || StringUtils.isNotBlank(userDto.getUserPassword())
//                || StringUtils.isNotBlank(userDto.getUserEmail()) || StringUtils.isNotBlank(userDto.getUserTelephoneNumber())
//                || StringUtils.isNotBlank(userDto.getUserNickname()))
        System.err.println(userDto);
        if (ParamUtil.paramIsNull(userDto.getUserName(), userDto.getUserPassword(), userDto.getUserEmail(),
                userDto.getUserTelephoneNumber(), userDto.getUserNickname()))
            throw new BlogsException(BlogsException.CODE_PARAM_NULL_ERROR, BlogsException.MSG_PARAM_NULL_ERROR);
        TUsers user = new TUsers();
        try {
            BeanUtils.copyProperties(user, userDto);
        } catch (Exception e) {
            e.printStackTrace();
        }
        String ip = RequestUtil.getIPAddress();
        Random random = new Random();
        String userId= (random.nextLong()+"").replace("-","");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        user.setUserIp(ip);
        user.setUserId(Long.valueOf(userId));
        user.setUserRegistrationTime(simpleDateFormat.format(new Date()));
        user.setUserPassword(new Md5Hash(user.getUserPassword()).toString());
        usersMapper.insert(user);
    }

    @Override
    public boolean checkPhone(UserDto userDto) {
        return StringUtils.isEmpty(usersMapper.checkPhone(userDto.getUserTelephoneNumber()));
    }
}
