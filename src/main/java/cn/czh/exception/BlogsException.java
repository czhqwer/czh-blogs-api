package cn.czh.exception;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BlogsException extends RuntimeException {

    private Integer code;
    private String message;

    public static final int CODE_LOGIN_ERROR = 1;
    public static final String MSG_LOGIN_ERROR = "账号或密码有误，请重新输入";

    public static final int CODE_PARAM_NULL_ERROR = 2;
    public static final String MSG_PARAM_NULL_ERROR = "参数为空";

}
