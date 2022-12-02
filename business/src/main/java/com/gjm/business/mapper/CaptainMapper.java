package com.gjm.business.mapper;


import com.gjm.business.entity.Captain;
import com.gjm.business.entity.Order;


import java.util.List;

public interface CaptainMapper {
    Captain login(Captain captain);
    int updatePassword(Captain captain);
    int updateCaptain(Captain captain);
    List<Order> queryRevenue();
    Captain queryCaptainById(int captain_id );

/*
    List<Business> queryBusiness(int businessId);
*/


}
