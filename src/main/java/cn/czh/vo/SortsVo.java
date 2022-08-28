package cn.czh.vo;

import cn.czh.domain.TSorts;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SortsVo {
    private Long sortId;

    private String sortName;

    private String sortAlias;

    private String sortDescription;

//    private String[] sorts;
    private List<TSorts> sorts = new ArrayList<>();

}
