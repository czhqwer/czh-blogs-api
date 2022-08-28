package cn.czh.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class TSorts extends BaserDomain{
    private Long sortId;

    private String sortName;

    private String sortAlias;

    private Long parentSortId;

    private String sortDescription;
}