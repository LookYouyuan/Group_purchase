package com.gjm.business.service;

import com.gjm.business.entity.Captain;

import java.util.List;

public interface CaptainService {
    List<Captain> queryCaptain();

    int updateCaptain(Captain captain);
    int updateCaptainWage(Captain captain);
    Captain queryCaptainById(int captain_id);
    int deleteCaptain(int captain_id);

    int addCaptain(Captain captain);
}
