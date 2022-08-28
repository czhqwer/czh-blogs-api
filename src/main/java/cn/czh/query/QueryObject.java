package cn.czh.query;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.shiro.util.StringUtils;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class QueryObject {
    private Integer currentPage = 1;
    private Integer pageSize = 2;

    private String keyword;

//    public String getKeyword() {
//        return StringUtils.hasLength(keyword) ? keyword : null;
//    }
}
