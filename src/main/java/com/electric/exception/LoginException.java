package com.electric.exception;

import com.electric.enums.ResultEnum;

public class LoginException extends RuntimeException {

    public LoginException(ResultEnum resultEnum) {
        super(resultEnum.getMsg());
    }
}
