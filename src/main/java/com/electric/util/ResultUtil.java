package com.electric.util;

import com.electric.entity.ResultVO;

public class ResultUtil {
    public static ResultVO success(String msg) {
        return new ResultVO(1, msg);
    }

    public static ResultVO success() {
        return new ResultVO(1, "成功");
    }

    public static ResultVO error(String msg) {
        return new ResultVO(2, msg);
    }

    public static ResultVO error() {
        return new ResultVO(2, "失败");
    }

}
