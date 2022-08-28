package cn.czh.mapper;

import cn.czh.domain.TComments;
import java.util.List;

public interface TCommentsMapper {
    int deleteByPrimaryKey(Long commentId);

    int insert(TComments record);

    List<TComments> selectAll();

    int updateByPrimaryKey(TComments record);
}