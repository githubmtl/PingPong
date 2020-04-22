package com.ruoyi.web.controller.business;

import com.ruoyi.business.domain.Appraise;
import com.ruoyi.business.domain.AppraiseExample;
import com.ruoyi.business.mapper.AppraiseMapper;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.List;

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

    @Autowired
    private AppraiseMapper appraiseMapper;

    private static final String prefix="business/appraise/";

    @GetMapping("/appraise")
    public ModelAndView appraiseView(Integer id,boolean admin){
        ModelAndView modelAndView=new ModelAndView(prefix+"appraise");
        modelAndView.addObject("reverseInfoId",id);
        modelAndView.addObject("admin",admin);
        AppraiseExample example=new AppraiseExample();
        AppraiseExample.Criteria criteria = example.createCriteria();
        criteria.andReverseInfoIdEqualTo(id);
        List<Appraise> appraises = appraiseMapper.selectByExample(example);
        if (CollectionUtils.isEmpty(appraises)){
            Appraise appraise=new Appraise();
            appraise.setCleanNum(0);
            appraise.setQiuTaiNum(0);
            appraise.setTempNum(0);
            modelAndView.addObject("appraiseInfo",appraise);
            modelAndView.addObject("appraiseFlag",false);
        }else{
            modelAndView.addObject("appraiseInfo",appraises.get(0));
            modelAndView.addObject("appraiseFlag",true);
        }
        return modelAndView;
    }

    @PostMapping("/appraiseSave")
    @ResponseBody
    public AjaxResult save(Appraise appraise){
        appraise.setAppraiseTime(new Date());
        try {
            if (appraise.getId()==null){
                appraiseMapper.insert(appraise);
                return success("评价成功！");
            }else{
                appraiseMapper.updateByPrimaryKey(appraise);
                return success("修改评价成功！");
            }
        }catch (Exception e){
            return error(e.getMessage());
        }
    }

    @PostMapping("/appraiseDel")
    @ResponseBody
    public AjaxResult appraiseDel(Appraise appraise){
        try {
            appraiseMapper.deleteByPrimaryKey(appraise.getId());
            return success("删除成功！");
        }catch (Exception e){
            return error(e.getMessage());
        }
    }
}
