package com.ruoyi.business.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.ruoyi.business.domain.ReverseInfo;
import com.ruoyi.business.domain.TStudent;
import com.ruoyi.business.domain.UserStudent;
import com.ruoyi.business.domain.UserStudentExample;
import com.ruoyi.business.mapper.ReverseInfoMapper;
import com.ruoyi.business.mapper.TStudentMapper;
import com.ruoyi.business.mapper.UserStudentMapper;
import com.ruoyi.business.service.BusinessRegisterService;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.shiro.service.SysRegisterService;
import com.ruoyi.system.domain.SysUser;
import com.ruoyi.system.domain.SysUserRole;
import com.ruoyi.system.mapper.SysUserMapper;
import com.ruoyi.system.mapper.SysUserRoleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;

//学生注册
@Service
@Transactional
public class BusinessRegisterServiceImpl implements BusinessRegisterService {

    @Autowired
    private SysRegisterService registerService;

    @Autowired
    private UserStudentMapper userStudentMapper;

    @Autowired
    private TStudentMapper tStudentMapper;

    @Autowired
    private SysUserRoleMapper userRoleMapper;

    @Autowired
    private ReverseInfoMapper reverseInfoMapper;


    @Override
    public String register(SysUser user, TStudent student) {
        user.setUserName(student.getStuName());
        String msg=registerService.register(user);
        if (StringUtils.isNotEmpty(msg)){
            throw new RuntimeException(msg);
        }

        TStudent tStudent=new TStudent();
        tStudent.setStuNo(student.getStuNo());

        List<TStudent> tStudents = tStudentMapper.selectTStudentList(tStudent);
        if (tStudents!=null&&tStudents.size()>0){
            throw new RuntimeException("学号["+tStudent.getStuNo()+"]已注册!");
        }

        tStudentMapper.insertTStudent(student);

        SysUserRole userRole=new SysUserRole();
        userRole.setUserId(user.getUserId());
        userRole.setRoleId(2L);
        userRoleMapper.batchUserRole(Collections.singletonList(userRole));

        UserStudent userStudent=new UserStudent();
        userStudent.setStudentId(student.getId().intValue());
        userStudent.setUserId(user.getUserId().intValue());

        userStudentMapper.insert(userStudent);

        return null;
    }

    @Override
    public void reverse(ReverseInfo reverseInfo) {
        UserStudentExample example=new UserStudentExample();
        UserStudentExample.Criteria criteria = example.createCriteria();
        criteria.andUserIdEqualTo(reverseInfo.getUserId());
        List<UserStudent> userStudents = userStudentMapper.selectByExample(example);
        if (userStudents==null||userStudents.size()==0){
            throw new RuntimeException("申请失败，未找到当前用户的学生信息！");
        }
        UserStudent userStudent = userStudents.get(0);
        reverseInfo.setStudentId(userStudent.getStudentId());
        reverseInfo.setStatus(0);
        reverseInfoMapper.insert(reverseInfo);
    }

    @Override
    public Page queryReverseInfo(Integer userId, Integer status,Integer pageNm,Integer pageSize) {
        Page<Map<String,Object>> page = PageHelper.startPage(pageNm, pageSize);
        reverseInfoMapper.queryReverseInfo(userId,status);
        return page;
    }

    /**
    * @Description:  预约处理
    * @Param:
    * @return:
    * @Author:
    * @Exception
    * @Date: 2020\4\15 0015
    */
    @Override
    public void reversedo(boolean flag, Integer id) {
        ReverseInfo reverseInfo = reverseInfoMapper.selectByPrimaryKey(id);
        if (flag){
            reverseInfo.setStatus(1);
            reverseInfo.setVerCode(UUID.randomUUID().toString().replaceAll("-", "").toUpperCase());
        }else{
            reverseInfo.setStatus(3);
        }
        reverseInfoMapper.updateByPrimaryKey(reverseInfo);
    }
}
