package cn.czh.service.impl;

import cn.czh.domain.TSorts;
import cn.czh.mapper.TSortsMapper;
import cn.czh.service.SortsService;
import cn.czh.vo.SortsVo;
import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
@Service
public class SortsServiceImpl implements SortsService {

    @Autowired
    private TSortsMapper sortsMapper;

    @Override
    public List<SortsVo> findSortAll() {
        List<TSorts> sortsList = sortsMapper.findParentIdNoNull();
        List<SortsVo> sortsVos = new ArrayList<>();
        for (TSorts sorts : sortsList) {
            SortsVo sortsVo = new SortsVo();
            sortsVo.setSortId(sorts.getSortId());
            sortsVo.setSortName(sorts.getSortName());
            sortsVo.setSortAlias(sorts.getSortAlias());
            sortsVo.setSortDescription(sorts.getSortDescription());
            if(sorts.getParentSortId() == null) {
                List<TSorts> tSorts = sortsMapper.findSonById(sorts.getSortId());
                sortsVo.setSorts(tSorts);

            }
            sortsVos.add(sortsVo);
        }
        return sortsVos;
    }
}
