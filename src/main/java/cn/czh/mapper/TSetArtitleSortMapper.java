package cn.czh.mapper;

import cn.czh.domain.TSetArtitleSort;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TSetArtitleSortMapper {
    int deleteByPrimaryKey(@Param("articleId") Long articleId, @Param("sortId") Long sortId);

    int insert(TSetArtitleSort record);

    List<TSetArtitleSort> selectAll();
}