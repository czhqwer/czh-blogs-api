package cn.czh.mapper;

import cn.czh.domain.TUserFriends;
import java.util.List;

public interface TUserFriendsMapper {
    int deleteByPrimaryKey(Long id);

    int insert(TUserFriends record);

    TUserFriends selectByPrimaryKey(Long id);

    List<TUserFriends> selectAll();

    int updateByPrimaryKey(TUserFriends record);
}