package com.ruoyi.business.service.impl;

import java.util.Date;
import java.util.List;

import com.ruoyi.business.domain.TPoolTable;
import com.ruoyi.business.mapper.TPoolTableMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.business.mapper.RepairMapper;
import com.ruoyi.business.domain.Repair;
import com.ruoyi.business.service.IRepairService;
import com.ruoyi.common.core.text.Convert;
import org.springframework.transaction.annotation.Transactional;

/**
 * 报修信息Service业务层处理
 * 
 * @author Sunny
 * @date 2020-04-22
 */
@Service
@Transactional
public class RepairServiceImpl implements IRepairService 
{
    @Autowired
    private RepairMapper repairMapper;

    @Autowired
    private TPoolTableMapper poolTableMapper;

    /**
     * 查询报修信息
     * 
     * @param id 报修信息ID
     * @return 报修信息
     */
    @Override
    public Repair selectRepairById(Long id)
    {
        return repairMapper.selectRepairById(id);
    }

    /**
     * 查询报修信息列表
     * 
     * @param repair 报修信息
     * @return 报修信息
     */
    @Override
    public List<Repair> selectRepairList(Repair repair)
    {
        return repairMapper.selectRepairList(repair);
    }

    /**
     * 新增报修信息
     * 
     * @param repair 报修信息
     * @return 结果
     */
    @Override
    public int insertRepair(Repair repair)
    {
        return repairMapper.insertRepair(repair);
    }

    /**
     * 修改报修信息
     * 
     * @param repair 报修信息
     * @return 结果
     */
    @Override
    public int updateRepair(Repair repair)
    {
        return repairMapper.updateRepair(repair);
    }

    /**
     * 删除报修信息对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteRepairByIds(String ids)
    {
        return repairMapper.deleteRepairByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除报修信息信息
     * 
     * @param id 报修信息ID
     * @return 结果
     */
    @Override
    public int deleteRepairById(Long id)
    {
        return repairMapper.deleteRepairById(id);
    }

    @Override
    public void doRepair(Long id, boolean flag) {
        Repair repair = repairMapper.selectRepairById(id);
        repair.setRepairTime(new Date());
        repair.setStatus(flag?1l:2l);
        if (flag){
            String tableNo = repair.getTableNo();
            TPoolTable poolTable=new TPoolTable();
            poolTable.setNo(Long.parseLong(tableNo));
            List<TPoolTable> tPoolTables = poolTableMapper.selectTPoolTableList(poolTable);
            TPoolTable poolTable1 = tPoolTables.get(0);
            poolTable1.setStatus(9);
            poolTableMapper.updateTPoolTable(poolTable1);
        }
        repairMapper.updateRepair(repair);
    }
}
