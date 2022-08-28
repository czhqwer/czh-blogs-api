package cn.czh.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TLabels extends BaserDomain{
    private Long labelId;

    private String labelName;

    private String labelAlias;

    private String labelDescription;
}