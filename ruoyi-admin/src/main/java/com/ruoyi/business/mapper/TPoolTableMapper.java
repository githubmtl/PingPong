package com.ruoyi.business.mapper;

import java.util.List;
import com.ruoyi.business.domain.TPoolTable;

/**
 * 球台信息Mapper接口
 * 
 * @author Sunny
 * @date 2020-04-14
 */
public interface TPoolTableMapper 
{
    /**
     * 查询球台信息
     * 
     * @param id 球台信息ID
     * @return 球台信息
     */
    public TPoolTable selectTPoolTableById(Long id);

    /**
     * 查询球台信息列表
     * 
     * @param tPoolTable 球台信息
     * @return 球台信息集合
     */
    public List<TPoolTable> selectTPoolTableList(TPoolTable tPoolTable);

    /**
     * 新增球台信息
     * 
     * @param tPoolTable 球台信息
     * @return 结果
     */
    public int insertTPoolTable(TPoolTable tPoolTable);

    /**
     * 修改球台信息
     * 
     * @param tPoolTable 球台信息
     * @return 结果
     */
    public int updateTPoolTable(TPoolTable tPoolTable);

    /**
     * 删除球台信息
     * 
     * @param id 球台信息ID
     * @return 结果
     */
    public int deleteTPoolTableById(Long id);

    /**
     * 批量删除球台信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTPoolTableByIds(String[] ids);
}
