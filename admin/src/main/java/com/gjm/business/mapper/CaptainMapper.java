package com.gjm.business.mapper;

import com.gjm.business.entity.Captain;

import java.util.List;

public interface CaptainMapper {
    List<Captain> queryCaptain();
    int updateCaptain(Captain captain);
    int updateCaptainWage(Captain captain);
    Captain queryCaptainById(int captain_id);
    int deleteCaptain(int captain_id);
    int addCaptain(Captain captain);
}
