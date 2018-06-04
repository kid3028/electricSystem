package com.electric.enums;

import lombok.Getter;

@Getter
public enum ResultEnum {
    USER_EMPTY(1, "用户信息不能为空"),
    PARAM_ERROR(2, "参数错误"),
    USER_NOT_LOGIN(3, "用户未登录"),
    NON_PRIVILEGE(4, "用户权限不足"),
    ;

    private int code;

    private String msg;

    ResultEnum(int code, String msg) {
        this.code = code;
        this.msg = msg;
    }
}
