package com.gjm.business.service;

import com.gjm.business.entity.Cart;

import java.util.List;

public interface SingleService {
    List<Cart> querySingle(int captain_id);
    List<Cart> queryListSingle(int order_id);


    int updateSingle(Cart cart);
    Cart querySingleById(int cart_id);

    Cart queryAllSingleById(int cart_id, int captain_id);

    int updateCartOrderId(Cart cart);

}
