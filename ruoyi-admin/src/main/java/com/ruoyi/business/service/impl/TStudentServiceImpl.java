package com.ruoyi.business.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.business.mapper.TStudentMapper;
import com.ruoyi.business.domain.TStudent;
import com.ruoyi.business.service.ITStudentService;
import com.ruoyi.common.core.text.Convert;

/**
 * 学生信息Service业务层处理
 * 
 * @author Sunny
 * @date 2020-04-14
 */
@Service
public class TStudentServiceImpl implements ITStudentService 
{
    @Autowired
    private TStudentMapper tStudentMapper;

    /**
     * 查询学生信息
     * 
     * @param id 学生信息ID
     * @return 学生信息
     */
    @Override
    public TStudent selectTStudentById(Long id)
    {
        return tStudentMapper.selectTStudentById(id);
    }

    /**
     * 查询学生信息列表
     * 
     * @param tStudent 学生信息
     * @return 学生信息
     */
    @Override
    public List<TStudent> selectTStudentList(TStudent tStudent)
    {
        return tStudentMapper.selectTStudentList(tStudent);
    }

    /**
     * 新增学生信息
     * 
     * @param tStudent 学生信息
     * @return 结果
     */
    @Override
    public int insertTStudent(TStudent tStudent)
    {
        return tStudentMapper.insertTStudent(tStudent);
    }

    /**
     * 修改学生信息
     * 
     * @param tStudent 学生信息
     * @return 结果
     */
    @Override
    public int updateTStudent(TStudent tStudent)
    {
        return tStudentMapper.updateTStudent(tStudent);
    }

    /**
     * 删除学生信息对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTStudentByIds(String ids)
    {
        return tStudentMapper.deleteTStudentByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除学生信息信息
     * 
     * @param id 学生信息ID
     * @return 结果
     */
    @Override
    public int deleteTStudentById(Long id)
    {
        return tStudentMapper.deleteTStudentById(id);
    }
}
