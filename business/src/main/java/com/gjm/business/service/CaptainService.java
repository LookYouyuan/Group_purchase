package com.gjm.business.service;

import com.gjm.business.entity.Captain;
import com.gjm.business.entity.Order;


import java.util.List;

public interface CaptainService {
    Captain login(Captain business);
    int updatePassword(Captain business);
    int updateCaptain(Captain captain);
    List<Order> queryRevenue();
    Captain queryCaptainById(int captain_id );


  /*  List<Business> queryBusiness(int businessId);*/
}
