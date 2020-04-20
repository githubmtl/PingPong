package com.ruoyi.business.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 学生信息对象 t_student
 * 
 * @author Sunny
 * @date 2020-04-14
 */
public class TStudent extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 学生姓名 */
    @Excel(name = "学生姓名")
    private String stuName;

    /** 学号 */
    @Excel(name = "学号")
    private String stuNo;

    /** 班级 */
    @Excel(name = "班级")
    private String stuClass;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setStuName(String stuName) 
    {
        this.stuName = stuName;
    }

    public String getStuName() 
    {
        return stuName;
    }
    public void setStuNo(String stuNo) 
    {
        this.stuNo = stuNo;
    }

    public String getStuNo() 
    {
        return stuNo;
    }
    public void setStuClass(String stuClass) 
    {
        this.stuClass = stuClass;
    }

    public String getStuClass() 
    {
        return stuClass;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("stuName", getStuName())
            .append("stuNo", getStuNo())
            .append("stuClass", getStuClass())
            .toString();
    }
}
