package com.ruoyi.web.controller.business;

import java.util.Date;
import java.util.List;

import com.ruoyi.business.domain.*;
import com.ruoyi.business.mapper.TPoolTableMapper;
import com.ruoyi.business.mapper.TStudentMapper;
import com.ruoyi.business.mapper.UserStudentMapper;
import com.ruoyi.system.domain.SysUser;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.business.service.IRepairService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;
import org.springframework.web.servlet.ModelAndView;

/**
 * 报修信息Controller
 * 
 * @author Sunny
 * @date 2020-04-22
 */
@Controller
@RequestMapping("/business/repair")
public class RepairController extends BaseController
{
    private String prefix = "business/repair";

    @Autowired
    private TPoolTableMapper tableMapper;

    @Autowired
    private UserStudentMapper userStudentMapper;

    @Autowired
    private TStudentMapper studentMapper;

    @Autowired
    private IRepairService repairService;

    @RequiresPermissions("business:repair:view")
    @GetMapping("/view")
    public ModelAndView repair()
    {
        SysUser user = (SysUser) SecurityUtils.getSubject().getPrincipal();
        ModelAndView modelAndView=new ModelAndView(prefix + "/repair");
        modelAndView.addObject("userId",user.getUserId());
        return modelAndView;
    }

    /**
     * 查询报修信息列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Repair repair)
    {
        startPage();
        List<Repair> list = repairService.selectRepairList(repair);
        return getDataTable(list);
    }

    /**
     * 导出报修信息列表
     */
    @RequiresPermissions("business:repair:export")
    @Log(title = "报修信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Repair repair)
    {
        List<Repair> list = repairService.selectRepairList(repair);
        ExcelUtil<Repair> util = new ExcelUtil<Repair>(Repair.class);
        return util.exportExcel(list, "repair");
    }

    /**
     * 新增报修信息
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存报修信息
     */
    @Log(title = "报修信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Repair repair)
    {
        String tableNo = repair.getTableNo();
        TPoolTable tPoolTable=new TPoolTable();
        tPoolTable.setNo(Long.parseLong(tableNo));
        List<TPoolTable> tPoolTables = tableMapper.selectTPoolTableList(tPoolTable);
        if (CollectionUtils.isEmpty(tPoolTables)){
            return error("球台编号["+tableNo+"]不存在！");
        }
        TPoolTable table = tPoolTables.get(0);
        if ("9".equals(table.getStatus())){
            return error("我们已经知道球台["+tableNo+"]已损坏啦！不用报修！");
        }
        SysUser user = (SysUser) SecurityUtils.getSubject().getPrincipal();
        UserStudentExample userStudentExample=new UserStudentExample();
        UserStudentExample.Criteria criteria = userStudentExample.createCriteria().andUserIdEqualTo(user.getUserId().intValue());
        List<UserStudent> userStudents = userStudentMapper.selectByExample(userStudentExample);
        UserStudent userStudent = userStudents.get(0);
        TStudent student = studentMapper.selectTStudentById(userStudent.getStudentId().longValue());
        repair.setRepairTime(new Date());
        repair.setRepairStudentNo(student.getStuNo());
        repair.setRepairUserId(user.getUserId());
        repair.setRepairUserName(user.getUserName());
        repair.setStatus(0l);
        return toAjax(repairService.insertRepair(repair));
    }

    /**
     * 修改报修信息
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Repair repair = repairService.selectRepairById(id);
        mmap.put("repair", repair);
        return prefix + "/edit";
    }

    /**
     * 修改保存报修信息
     */
    @RequiresPermissions("business:repair:edit")
    @Log(title = "报修信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Repair repair)
    {
        return toAjax(repairService.updateRepair(repair));
    }

    /**
     * 删除报修信息
     */
    @RequiresPermissions("business:repair:remove")
    @Log(title = "报修信息", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(repairService.deleteRepairByIds(ids));
    }

    @GetMapping("/doRepairView")
    @RequiresPermissions("business:repair:doRepairView")
    public String doRepairView(){
        return prefix+"/doRepair";
    }

    //处理报修
    @PostMapping("/doRepair")
    @ResponseBody
    public AjaxResult doRepair(Long id,boolean flag){
        try {
            repairService.doRepair(id,flag);
            return success(flag?"已同意报修！":"已拒绝报修！");
        }catch (Exception e){
            return error(e.getMessage());
        }
    }
}
