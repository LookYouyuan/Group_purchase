package com.gjm.business.service.Impl;

import com.gjm.business.entity.Captain;
import com.gjm.business.mapper.CaptainMapper;
import com.gjm.business.service.CaptainService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CaptainServiceImpl implements CaptainService {

    @Resource
    private CaptainMapper captainMapper;
    @Override
    public List<Captain> queryCaptain() {
        return this.captainMapper.queryCaptain();
    }

    @Override
    public int updateCaptain(Captain captain) {
        return this.captainMapper.updateCaptain(captain);
    }

    @Override
    public int updateCaptainWage(Captain captain) {
        return this.captainMapper.updateCaptainWage(captain);
    }

    @Override
    public Captain queryCaptainById(int captain_id) {
        return this.captainMapper.queryCaptainById(captain_id);
    }

    @Override
    public int deleteCaptain(int captain_id) {
        return this.captainMapper.deleteCaptain(captain_id);
    }

    @Override
    public int addCaptain(Captain captain) {
        return this.captainMapper.addCaptain(captain);
    }
}
