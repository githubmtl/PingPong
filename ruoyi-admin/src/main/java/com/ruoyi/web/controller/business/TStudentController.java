package com.ruoyi.web.controller.business;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.business.domain.TStudent;
import com.ruoyi.business.service.ITStudentService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 学生信息Controller
 * 
 * @author Sunny
 * @date 2020-04-14
 */
@Controller
@RequestMapping("/business/student")
public class TStudentController extends BaseController
{
    private String prefix = "business/student";

    @Autowired
    private ITStudentService tStudentService;

    @RequiresPermissions("business:student:view")
    @GetMapping("/view")
    public String student()
    {
        return prefix + "/student";
    }

    /**
     * 查询学生信息列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TStudent tStudent)
    {
        startPage();
        List<TStudent> list = tStudentService.selectTStudentList(tStudent);
        return getDataTable(list);
    }

    /**
     * 导出学生信息列表
     */
    @Log(title = "学生信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TStudent tStudent)
    {
        List<TStudent> list = tStudentService.selectTStudentList(tStudent);
        ExcelUtil<TStudent> util = new ExcelUtil<TStudent>(TStudent.class);
        return util.exportExcel(list, "student");
    }

    /**
     * 新增学生信息
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存学生信息
     */
    @Log(title = "学生信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TStudent tStudent)
    {
        return toAjax(tStudentService.insertTStudent(tStudent));
    }

    /**
     * 修改学生信息
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TStudent tStudent = tStudentService.selectTStudentById(id);
        mmap.put("tStudent", tStudent);
        return prefix + "/edit";
    }

    /**
     * 修改保存学生信息
     */
    @Log(title = "学生信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TStudent tStudent)
    {
        return toAjax(tStudentService.updateTStudent(tStudent));
    }

    /**
     * 删除学生信息
     */
    @Log(title = "学生信息", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tStudentService.deleteTStudentByIds(ids));
    }
}
