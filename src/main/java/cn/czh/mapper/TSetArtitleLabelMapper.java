package cn.czh.mapper;

import cn.czh.domain.TSetArtitleLabel;
import java.util.List;

public interface TSetArtitleLabelMapper {
    int deleteByPrimaryKey(Long articleId);

    int insert(TSetArtitleLabel record);

    TSetArtitleLabel selectByPrimaryKey(Long articleId);

    List<TSetArtitleLabel> selectAll();

    int updateByPrimaryKey(TSetArtitleLabel record);
}