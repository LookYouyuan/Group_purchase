package com.gjm.business.service;

import com.gjm.business.entity.Admin;

public interface AdminService {
    Admin login(Admin admin);
    int updatePassword(Admin admin);


  /*  List<Business> queryBusiness(int businessId);*/
}
