package cn.czh.mapper;

import cn.czh.domain.TLabels;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TLabelsMapper {
    int deleteByPrimaryKey(Long labelId);

    int insert(TLabels record);

    List<TLabels> selectAll();

    int updateByPrimaryKey(TLabels record);

    List<TLabels> selectLableListByArticleId(Long articleId);

}