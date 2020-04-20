package com.ruoyi.web.controller.business;

import com.github.pagehelper.Page;
import com.ruoyi.business.domain.ReverseInfo;
import com.ruoyi.business.domain.TStudent;
import com.ruoyi.business.domain.UserStudent;
import com.ruoyi.business.domain.UserStudentExample;
import com.ruoyi.business.mapper.TStudentMapper;
import com.ruoyi.business.mapper.UserStudentMapper;
import com.ruoyi.business.service.BusinessRegisterService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.PageDomain;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.core.page.TableSupport;
import com.ruoyi.system.domain.SysUser;
import com.ruoyi.system.mapper.SysUserMapper;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/business")
public class BusiRegisterController extends BaseController {

    @Autowired
    private BusinessRegisterService businessRegisterService;

    @Autowired
    private UserStudentMapper userStudentMapper;

    @Autowired
    private TStudentMapper studentMapper;

    @Autowired
    private SysUserMapper userMapper;

    @PostMapping("/register")
    @ResponseBody
    public AjaxResult ajaxRegister(SysUser user, TStudent student)
    {
        try {
            String msg = businessRegisterService.register(user,student);
            return success();
        }catch (Exception e){
            return error(e.getMessage());
        }
    }

    /**
    * @Description: 提交预约申请
    * @Param:
    * @return:
    * @Author:
    * @Exception
    * @Date: 2020\4\15 0015
    */
    @PostMapping("/reverse")
    @ResponseBody
    public AjaxResult reverse(ReverseInfo reverseInfo,String reverseDate,String reverseStartTm,String reverseEndTm){
        try {
            SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            reverseStartTm=reverseDate+" "+reverseStartTm;
            reverseEndTm=reverseDate+" "+reverseEndTm;
            reverseInfo.setReverseStartTm(simpleDateFormat.parse(reverseStartTm));
            reverseInfo.setReverseEndTm(simpleDateFormat.parse(reverseEndTm));
            SysUser user = (SysUser) SecurityUtils.getSubject().getPrincipal();
            reverseInfo.setUserId(user.getUserId().intValue());
            businessRegisterService.reverse(reverseInfo);
            return success("提交申请成功，等待管理员审核...");
        }catch (Exception e){
            return error(e.getMessage());
        }
    }

    /**
    * @Description: 查询预约信息
    * @Param:
    * @return:
    * @Author:
    * @Exception
    * @Date: 2020\4\15 0015
    */
    @PostMapping("/reverseList")
    @ResponseBody
    public TableDataInfo reverseInfo(Integer userId,Integer status){
        PageDomain pageDomain = TableSupport.getPageDomain();
        Page page = businessRegisterService.queryReverseInfo(userId, status, pageDomain.getPageNum(), pageDomain.getPageSize());
        return new TableDataInfo(page.getResult(),(int)page.getTotal());
    }

    /**
    * @Description: 我的预约信息
    * @Param:
    * @return:
    * @Author:
    * @Exception
    * @Date: 2020\4\15 0015
    */
    @RequestMapping("/myReverseView")
    @RequiresPermissions("business:myReverseView")
    public ModelAndView myReverseView(){
        ModelAndView modelAndView=new ModelAndView("business/myReverseInfo");
        modelAndView.addObject("userId", ((SysUser) SecurityUtils.getSubject().getPrincipal()).getUserId());
        return modelAndView;
    }

    /**
    * @Description: 预约信息处理
    * @Param:
    * @return:
    * @Author:
    * @Exception
    * @Date: 2020\4\15 0015
    */
    @RequestMapping("/reverseView")
    @RequiresPermissions("business:reverseView")
    public ModelAndView reverseView(){
        ModelAndView modelAndView=new ModelAndView("business/reverseInfo");
        return modelAndView;
    }

    /**
    * @Description: 历史预约信息页面
    * @Param:
    * @return:
    * @Author:
    * @Exception
    * @Date: 2020\4\16 0016
    */
    @RequestMapping("/hisReverseView")
    @RequiresPermissions("business:hisReverseView")
    public ModelAndView hisReverseView(){
        ModelAndView modelAndView=new ModelAndView("business/hisReverseInfo");
        return modelAndView;
    }

    @GetMapping("/reverse")
    public ModelAndView reverse()
    {
        ModelAndView modelAndView=new ModelAndView("business/reverse");
        Subject subject = SecurityUtils.getSubject();
        SysUser user = (SysUser) subject.getPrincipal();
        modelAndView.addObject("userInfo",user);
        UserStudentExample example=new UserStudentExample();
        UserStudentExample.Criteria criteria = example.createCriteria();
        criteria.andUserIdEqualTo(user.getUserId().intValue());
        List<UserStudent> userStudents = userStudentMapper.selectByExample(example);
        Integer studentId = userStudents.get(0).getStudentId();
        TStudent tStudent = studentMapper.selectTStudentById((long)studentId);
        modelAndView.addObject("studentInfo",tStudent);
        return modelAndView;
    }

    @PostMapping("/reversedo")
    @ResponseBody
    public AjaxResult reversedo(Boolean flag,Integer id){
        try {
            businessRegisterService.reversedo(flag,id);
            return success("处理成功！");
        }catch (Exception e){
            return error(e.getMessage());
        }
    }

    @PostMapping("/users")
    @ResponseBody
    public AjaxResult userQuery(String key){
        SysUser user = new SysUser();
        if (StringUtils.isNotBlank(key)){
            key="%"+key+"%";
        }else {
            key="%";
        }
        user.setUserName(key);
        List<SysUser> sysUsers = userMapper.selectByUserName(key);
        List<Map<String,Object>> result=new ArrayList<>();
        AjaxResult success = AjaxResult.success();
        if (sysUsers!=null){
            success.put("total",sysUsers.size());
            for (SysUser sysUser : sysUsers) {
                Map<String,Object> map=new HashMap<>();
                map.put("id",sysUser.getUserId());
                map.put("text",sysUser.getUserName());
                result.add(map);
            }
            success.put("rows",result);
            return success;
        }
        success.put("total",0);
        success.put("rows", null);
        return success;
    }
}
