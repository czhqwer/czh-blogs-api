package cn.czh.query;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class QueryObject {
    private Integer currentPage = 1;
    private Integer pageSize = 10;

    private String keyword;

//    public String getKeyword() {
//        return StringUtils.hasLength(keyword) ? keyword : null;
//    }
}
