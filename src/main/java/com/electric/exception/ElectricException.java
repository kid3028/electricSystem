package com.electric.exception;

import com.electric.enums.ResultEnum;
import lombok.NoArgsConstructor;

@NoArgsConstructor
public class ElectricException extends RuntimeException {
    private Integer code;

    public ElectricException(ResultEnum resultEnum){
        super(resultEnum.getMsg());
        this.code = resultEnum.getCode();
    }
}
