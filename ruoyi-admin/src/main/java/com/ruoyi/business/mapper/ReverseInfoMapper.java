package com.ruoyi.business.mapper;

import com.ruoyi.business.domain.ReverseInfo;
import com.ruoyi.business.domain.ReverseInfoExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface ReverseInfoMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_reverse_info
     *
     * @mbg.generated Tue Apr 14 17:18:58 CST 2020
     */
    long countByExample(ReverseInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_reverse_info
     *
     * @mbg.generated Tue Apr 14 17:18:58 CST 2020
     */
    int deleteByExample(ReverseInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_reverse_info
     *
     * @mbg.generated Tue Apr 14 17:18:58 CST 2020
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_reverse_info
     *
     * @mbg.generated Tue Apr 14 17:18:58 CST 2020
     */
    int insert(ReverseInfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_reverse_info
     *
     * @mbg.generated Tue Apr 14 17:18:58 CST 2020
     */
    int insertSelective(ReverseInfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_reverse_info
     *
     * @mbg.generated Tue Apr 14 17:18:58 CST 2020
     */
    List<ReverseInfo> selectByExample(ReverseInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_reverse_info
     *
     * @mbg.generated Tue Apr 14 17:18:58 CST 2020
     */
    ReverseInfo selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_reverse_info
     *
     * @mbg.generated Tue Apr 14 17:18:58 CST 2020
     */
    int updateByExampleSelective(@Param("record") ReverseInfo record, @Param("example") ReverseInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_reverse_info
     *
     * @mbg.generated Tue Apr 14 17:18:58 CST 2020
     */
    int updateByExample(@Param("record") ReverseInfo record, @Param("example") ReverseInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_reverse_info
     *
     * @mbg.generated Tue Apr 14 17:18:58 CST 2020
     */
    int updateByPrimaryKeySelective(ReverseInfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_reverse_info
     *
     * @mbg.generated Tue Apr 14 17:18:58 CST 2020
     */
    int updateByPrimaryKey(ReverseInfo record);

    /**
    * @Description: 查询预约申请信息
    * @Param:
    * @return:
    * @Author: MoTianLong
    * @Exception
    * @Date: 2020\4\15 0015
    */
    public List<Map<String,Object>> queryReverseInfo(@Param("userId") Integer userId,@Param("status") Integer status);
}