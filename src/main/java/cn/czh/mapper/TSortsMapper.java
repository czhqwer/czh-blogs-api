package cn.czh.mapper;

import cn.czh.domain.TSorts;
import cn.czh.vo.SortsVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface TSortsMapper {
    int deleteByPrimaryKey(Long sortId);

    int insert(TSorts record);

    List<TSorts> selectAll();

    int updateByPrimaryKey(TSorts record);


    List<TSorts> findSonById(Long sortId);

    List<TSorts> findParentIdNoNull();

}