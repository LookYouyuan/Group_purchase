package com.gjm.business.service.Impl;

import com.gjm.business.entity.Admin;

import com.gjm.business.mapper.AdminMapper;

import com.gjm.business.service.AdminService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class AdminServiceImpl implements AdminService {
    @Resource
    private AdminMapper adminMapper;


    @Override
    public Admin login(Admin admin) {
        return this.adminMapper.login(admin);
    }
    @Override
    public int updatePassword(Admin admin){
        return this.adminMapper.updatePassword(admin);
    }

    /*@Override
    public List<Business> queryBusiness(int businessId){
        return this.businessMapper.queryBusiness(businessId);
    }*/


}
