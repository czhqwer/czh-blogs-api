package cn.czh.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TSetArtitleSort extends BaserDomain{
    private Long articleId;

    private Long sortId;
}