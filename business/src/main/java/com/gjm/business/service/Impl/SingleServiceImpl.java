package com.gjm.business.service.Impl;

import com.gjm.business.entity.Cart;
import com.gjm.business.mapper.SingleMapper;
import com.gjm.business.service.SingleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SingleServiceImpl implements SingleService {
    @Resource
    private SingleMapper singleMapper;
    @Override
    public List<Cart> querySingle(int captain_id) {
        return this.singleMapper.querySingle(captain_id);
    }

    @Override
    public List<Cart> queryListSingle(int order_id) {
        return this.singleMapper.queryListSingle(order_id);
    }

    @Override
    public int updateSingle(Cart cart) {
        return this.singleMapper.updateSingle(cart);
    }

    @Override
    public Cart querySingleById(int cart_id) {
        return this.singleMapper.querySingleById(cart_id);
    }

    @Override
    public Cart queryAllSingleById(int cart_id, int captain_id) {
        return this.singleMapper.queryAllSingleById(cart_id,captain_id);
    }

    @Override
    public int updateCartOrderId(Cart cart) {
        return this.singleMapper.updateCartOrderId(cart);
    }

}
