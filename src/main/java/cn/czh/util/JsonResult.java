package cn.czh.util;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


/*
  code:
  msg:
  data:
 */
@Setter
@Getter
@NoArgsConstructor
public class JsonResult<T> {
    public static final int CODE_SUCCESS = 200;
    public static final String MSG_SUCCESS = "操作成功";

    public static final int CODE_NOLOGIN = 401;
    public static final String MSG_NOLOGIN = "请先登录";

    public static final int CODE_ERROR = 500;
    public static final String MSG_ERROR = "系统异常，请联系管理员";

    public static final int CODE_ERROR_PARAM = 501;
    public static final String MSG_ERROR_PARAM = "参数异常";

    private int code;
    private String mssage;
    private T data;    //除了操作结果之外，还有携带数据返回情况


    public JsonResult(int code, String msg, T data) {
        this.code = code;
        this.mssage = msg;
        this.data = data;
    }

    public static <T> JsonResult success(T data) {
        return new JsonResult(CODE_SUCCESS, MSG_SUCCESS, data);
    }

    public static <T> JsonResult success() {
        return new JsonResult(CODE_SUCCESS, MSG_SUCCESS, null);
    }

    public static <T> JsonResult error(int code, String msg, T data) {
        return new JsonResult(code, msg, data);
    }

    public static <T> JsonResult defaultError() {
        return new JsonResult(CODE_ERROR, MSG_ERROR, null);
    }

    public static <T> JsonResult noLogin() {
        return new JsonResult(CODE_NOLOGIN, MSG_NOLOGIN, null);
    }
}