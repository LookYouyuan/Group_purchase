package com.gjm.business.mapper;


import com.gjm.business.entity.Admin;

public interface AdminMapper {
    Admin login(Admin admin);
    int updatePassword(Admin admin);

/*
    List<Business> queryBusiness(int businessId);
*/


}
