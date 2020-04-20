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
import com.ruoyi.business.domain.TPoolTable;
import com.ruoyi.business.service.ITPoolTableService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 球台信息Controller
 * 
 * @author Sunny
 * @date 2020-04-14
 */
@Controller
@RequestMapping("/business/poolTable")
public class TPoolTableController extends BaseController
{
    private String prefix = "business/poolTable";

    @Autowired
    private ITPoolTableService tPoolTableService;

    @RequiresPermissions("business:poolTable:view")
    @GetMapping("/view")
    public String poolTable()
    {
        return prefix + "/poolTable";
    }

    /**
     * 查询球台信息列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TPoolTable tPoolTable)
    {
        startPage();
        List<TPoolTable> list = tPoolTableService.selectTPoolTableList(tPoolTable);
        return getDataTable(list);
    }

    /**
     * 导出球台信息列表
     */
    @Log(title = "球台信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TPoolTable tPoolTable)
    {
        List<TPoolTable> list = tPoolTableService.selectTPoolTableList(tPoolTable);
        ExcelUtil<TPoolTable> util = new ExcelUtil<TPoolTable>(TPoolTable.class);
        return util.exportExcel(list, "poolTable");
    }

    /**
     * 新增球台信息
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存球台信息
     */
    @Log(title = "球台信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TPoolTable tPoolTable)
    {
        return toAjax(tPoolTableService.insertTPoolTable(tPoolTable));
    }

    /**
     * 修改球台信息
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TPoolTable tPoolTable = tPoolTableService.selectTPoolTableById(id);
        mmap.put("tPoolTable", tPoolTable);
        return prefix + "/edit";
    }

    /**
     * 修改保存球台信息
     */
    @Log(title = "球台信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TPoolTable tPoolTable)
    {
        return toAjax(tPoolTableService.updateTPoolTable(tPoolTable));
    }

    /**
     * 删除球台信息
     */
    @Log(title = "球台信息", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tPoolTableService.deleteTPoolTableByIds(ids));
    }
}
