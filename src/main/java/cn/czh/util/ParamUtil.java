package cn.czh.util;


import org.springframework.util.StringUtils;

public class ParamUtil {

    public static boolean paramIsNull(String... strings) {
        for (String string : strings) {
            if (StringUtils.isEmpty(string)) {
                return true;
            }
        }
        return false;
    }
}
