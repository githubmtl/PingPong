package com.ruoyi.business.mapper;

import java.util.List;
import com.ruoyi.business.domain.Repair;

/**
 * 报修信息Mapper接口
 * 
 * @author Sunny
 * @date 2020-04-22
 */
public interface RepairMapper 
{
    /**
     * 查询报修信息
     * 
     * @param id 报修信息ID
     * @return 报修信息
     */
    public Repair selectRepairById(Long id);

    /**
     * 查询报修信息列表
     * 
     * @param repair 报修信息
     * @return 报修信息集合
     */
    public List<Repair> selectRepairList(Repair repair);

    /**
     * 新增报修信息
     * 
     * @param repair 报修信息
     * @return 结果
     */
    public int insertRepair(Repair repair);

    /**
     * 修改报修信息
     * 
     * @param repair 报修信息
     * @return 结果
     */
    public int updateRepair(Repair repair);

    /**
     * 删除报修信息
     * 
     * @param id 报修信息ID
     * @return 结果
     */
    public int deleteRepairById(Long id);

    /**
     * 批量删除报修信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteRepairByIds(String[] ids);
}
