package cn.czh.mapper;

import cn.czh.domain.TUsers;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface TUsersMapper {
    int deleteByPrimaryKey(Long userId);

    int insert(TUsers record);

    TUsers selectByPrimaryKey(Long userId);

    List<TUsers> selectAll();

    int updateByPrimaryKey(TUsers record);

    TUsers findUserByPhoneOrEmail(@Param("email") String email, @Param("phone") String phone);

    TUsers checkPhone(String userTelephoneNumber);

}