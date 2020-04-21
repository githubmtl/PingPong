package com.ruoyi.web.controller.business;

import com.ruoyi.common.core.controller.BaseController;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @ClassName:
 * @Description: 评价前端控制器
 * @author:
 * @date: 2020年04月21日 20:35
 * @Copyright:
 */
@Controller
@RequestMapping("/business")
public class AppraiseController extends BaseController {

    private static final String prefix="business/appraise/";

    @GetMapping("/appraise")
    public String appraiseView(){
        return prefix+"appraise";
    }
}
