package com.ruoyi.business.service.impl;

import java.util.List;

import com.ruoyi.common.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.business.mapper.TPoolTableMapper;
import com.ruoyi.business.domain.TPoolTable;
import com.ruoyi.business.service.ITPoolTableService;
import com.ruoyi.common.core.text.Convert;
import org.springframework.util.CollectionUtils;

/**
 * 球台信息Service业务层处理
 * 
 * @author Sunny
 * @date 2020-04-14
 */
@Service
public class TPoolTableServiceImpl implements ITPoolTableService 
{
    @Autowired
    private TPoolTableMapper tPoolTableMapper;

    /**
     * 查询球台信息
     * 
     * @param id 球台信息ID
     * @return 球台信息
     */
    @Override
    public TPoolTable selectTPoolTableById(Long id)
    {
        return tPoolTableMapper.selectTPoolTableById(id);
    }

    /**
     * 查询球台信息列表
     * 
     * @param tPoolTable 球台信息
     * @return 球台信息
     */
    @Override
    public List<TPoolTable> selectTPoolTableList(TPoolTable tPoolTable)
    {
        return tPoolTableMapper.selectTPoolTableList(tPoolTable);
    }

    /**
     * 新增球台信息
     * 
     * @param tPoolTable 球台信息
     * @return 结果
     */
    @Override
    public int insertTPoolTable(TPoolTable tPoolTable)
    {
        if (tPoolTable.getNo()==null||tPoolTable.getNo()==0){
            throw new RuntimeException("球台编号不能为空！");
        }
        Long tableNo = tPoolTable.getNo();
        TPoolTable poolTable=new TPoolTable();
        poolTable.setNo(tableNo);
        List<TPoolTable> tPoolTables = tPoolTableMapper.selectTPoolTableList(poolTable);
        if (!CollectionUtils.isEmpty(tPoolTables)){
            throw new RuntimeException("球台编号["+tableNo+"]已存在！");
        }
        return tPoolTableMapper.insertTPoolTable(tPoolTable);
    }

    /**
     * 修改球台信息
     * 
     * @param tPoolTable 球台信息
     * @return 结果
     */
    @Override
    public int updateTPoolTable(TPoolTable tPoolTable)
    {
        return tPoolTableMapper.updateTPoolTable(tPoolTable);
    }

    /**
     * 删除球台信息对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTPoolTableByIds(String ids)
    {
        return tPoolTableMapper.deleteTPoolTableByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除球台信息信息
     * 
     * @param id 球台信息ID
     * @return 结果
     */
    @Override
    public int deleteTPoolTableById(Long id)
    {
        return tPoolTableMapper.deleteTPoolTableById(id);
    }
}
