package com.ruoyi.business.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import java.util.Date;

/**
 * 报修信息对象 t_repair
 * 
 * @author Sunny
 * @date 2020-04-22
 */
public class Repair extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 报修用户ID */
    private Long repairUserId;

    /** 报修人 */
    @Excel(name = "报修人")
    private String repairUserName;

    /** 报修人学号 */
    @Excel(name = "报修人学号")
    private String repairStudentNo;

    /** 球台编号 */
    @Excel(name = "球台编号")
    private String tableNo;

    /** 报修时间 */
    @Excel(name = "报修时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date repairTime;

    /** 处理时间 */
    @Excel(name = "处理时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date doTime;

    /** 状态 0-未处理 1-已处理 */
    @Excel(name = "状态 0-未处理 1-已处理")
    private Long status;

    /** 详细描述 */
    @Excel(name = "详细描述")
    private String comment;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setRepairUserId(Long repairUserId) 
    {
        this.repairUserId = repairUserId;
    }

    public Long getRepairUserId() 
    {
        return repairUserId;
    }
    public void setRepairUserName(String repairUserName) 
    {
        this.repairUserName = repairUserName;
    }

    public String getRepairUserName() 
    {
        return repairUserName;
    }
    public void setRepairStudentNo(String repairStudentNo) 
    {
        this.repairStudentNo = repairStudentNo;
    }

    public String getRepairStudentNo() 
    {
        return repairStudentNo;
    }
    public void setTableNo(String tableNo) 
    {
        this.tableNo = tableNo;
    }

    public String getTableNo() 
    {
        return tableNo;
    }
    public void setRepairTime(Date repairTime) 
    {
        this.repairTime = repairTime;
    }

    public Date getRepairTime() 
    {
        return repairTime;
    }
    public void setDoTime(Date doTime) 
    {
        this.doTime = doTime;
    }

    public Date getDoTime() 
    {
        return doTime;
    }
    public void setStatus(Long status) 
    {
        this.status = status;
    }

    public Long getStatus() 
    {
        return status;
    }
    public void setComment(String comment) 
    {
        this.comment = comment;
    }

    public String getComment() 
    {
        return comment;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("repairUserId", getRepairUserId())
            .append("repairUserName", getRepairUserName())
            .append("repairStudentNo", getRepairStudentNo())
            .append("tableNo", getTableNo())
            .append("repairTime", getRepairTime())
            .append("doTime", getDoTime())
            .append("status", getStatus())
            .append("comment", getComment())
            .toString();
    }
}
