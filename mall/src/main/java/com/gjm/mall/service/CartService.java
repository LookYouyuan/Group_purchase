package com.gjm.mall.service;

import com.gjm.mall.entity.Captain;
import com.gjm.mall.entity.Cart;

import java.util.List;

public interface CartService {
    List<Cart> queryCartss( int user_id );
    List<Cart> queryCart( int user_id );
    List<Captain> queryCaptain();



    int updateCart(Cart cart);
    Cart queryCartById(int cart_id);
    int addCart(Cart cart);

}
