package com.ruoyi.web.controller.business;


import com.ruoyi.common.core.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/webInfo")
public class WebInfoController extends BaseController {
    private static final String prefix="business/webInfo";
    @RequestMapping("/aboutme")
    public String aboutme(){
        return prefix+"/aboutme";
    }

    @RequestMapping("/syzn")
    public String syzn(){
        return prefix+"/syzn";
    }

    @RequestMapping("/lxwm")
    public String lxwm(){
        return prefix+"/lxwm";
    }
}
