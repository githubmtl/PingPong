package com.ruoyi.business.service;


import com.github.pagehelper.Page;
import com.ruoyi.business.domain.ReverseInfo;
import com.ruoyi.business.domain.TStudent;
import com.ruoyi.system.domain.SysUser;

import java.util.List;
import java.util.Map;

public interface BusinessRegisterService {
    public String register(SysUser user, TStudent student);

    public void reverse(ReverseInfo reverseInfo);

    public Page queryReverseInfo(Integer userId, Integer status,Integer pageNm,Integer pageSize);

    public void reversedo(boolean flag,Integer id);
}
