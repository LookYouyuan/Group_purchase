package com.gjm.mall.service.Impl;

import com.gjm.mall.entity.Captain;
import com.gjm.mall.entity.Cart;
import com.gjm.mall.mapper.CartMapper;
import com.gjm.mall.service.CartService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.smartcardio.CardTerminal;
import java.util.List;

@Service
public class CartServiceImpl implements CartService {
    @Resource
    private CartMapper cartMapper;

    @Override
    public List<Cart> queryCartss(int user_id) {
        return this.cartMapper.queryCartss(user_id);
    }


    @Override
    public List<Cart> queryCart(int user_id) {
        return this.cartMapper.queryCart(user_id);
    }

    @Override
    public List<Captain> queryCaptain() {
        return this.cartMapper.queryCaptain();
    }


    @Override
    public int updateCart(Cart cart) {
        return this.cartMapper.updateCart(cart);
    }

    @Override
    public Cart queryCartById(int cart_id) {
        return this.cartMapper.queryCartById(cart_id);
    }

    @Override
    public int addCart(Cart cart) {
        return this.cartMapper.addCart(cart);
    }
}
