package com.gjm.business.service.Impl;

import com.gjm.business.entity.Captain;

import com.gjm.business.entity.Order;
import com.gjm.business.mapper.CaptainMapper;

import com.gjm.business.mapper.OrderMapper;
import com.gjm.business.service.CaptainService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CaptainServiceImpl implements CaptainService {
    @Resource
    private CaptainMapper captainMapper;


    @Override
    public Captain login(Captain captain) {
        return this.captainMapper.login(captain);
    }
    @Override
    public int updatePassword(Captain captain){
        return this.captainMapper.updatePassword(captain);
    }

    @Override
    public int updateCaptain(Captain captain) {
        return this.captainMapper.updateCaptain(captain);
    }

    @Override
    public List<Order> queryRevenue() {
        return this.captainMapper.queryRevenue();
    }

    @Override
    public Captain queryCaptainById(int captain_id) {
        return this.captainMapper.queryCaptainById(captain_id);
    }

    /*@Override
    public List<Business> queryBusiness(int businessId){
        return this.businessMapper.queryBusiness(businessId);
    }*/


}
