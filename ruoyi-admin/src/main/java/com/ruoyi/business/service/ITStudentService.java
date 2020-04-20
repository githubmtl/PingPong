package com.ruoyi.business.service;

import java.util.List;
import com.ruoyi.business.domain.TStudent;

/**
 * 学生信息Service接口
 * 
 * @author Sunny
 * @date 2020-04-14
 */
public interface ITStudentService 
{
    /**
     * 查询学生信息
     * 
     * @param id 学生信息ID
     * @return 学生信息
     */
    public TStudent selectTStudentById(Long id);

    /**
     * 查询学生信息列表
     * 
     * @param tStudent 学生信息
     * @return 学生信息集合
     */
    public List<TStudent> selectTStudentList(TStudent tStudent);

    /**
     * 新增学生信息
     * 
     * @param tStudent 学生信息
     * @return 结果
     */
    public int insertTStudent(TStudent tStudent);

    /**
     * 修改学生信息
     * 
     * @param tStudent 学生信息
     * @return 结果
     */
    public int updateTStudent(TStudent tStudent);

    /**
     * 批量删除学生信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTStudentByIds(String ids);

    /**
     * 删除学生信息信息
     * 
     * @param id 学生信息ID
     * @return 结果
     */
    public int deleteTStudentById(Long id);
}
