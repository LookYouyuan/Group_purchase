package com.gjm.business.service.Impl;

import com.gjm.business.entity.Order;
import com.gjm.business.mapper.OrderMapper;
import com.gjm.business.service.OrderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    @Resource
    private OrderMapper orderMapper;
    @Override
    public List<Order> queryOrder1() {
        return this.orderMapper.queryOrder1();
    }

    @Override
    public List<Order> queryOrder2() {
        return this.orderMapper.queryOrder2();
    }

    @Override
    public List<Order> queryOrder3() {
        return this.orderMapper.queryOrder3();
    }

    @Override
    public List<Order> queryOrder4() {
        return this.orderMapper.queryOrder4();
    }



    @Override
    public int updateOrder(Order order) {
        return this.orderMapper.updateOrder(order);
    }

    @Override
    public Order queryOrderById(int order_id) {
        return this.orderMapper.queryOrderById(order_id);
    }

    @Override
    public int addOrder(Order order) {
        return this.orderMapper.addOrder(order);
    }
}
