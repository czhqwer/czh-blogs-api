package cn.czh.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TSetArtitleLabel {
    private Long articleId;

    private Long labelId;
}