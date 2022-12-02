package com.gjm.business.mapper;

import com.gjm.business.entity.Order;

import java.util.List;

public interface OrderMapper {

    List<Order> queryOrder1();
    List<Order> queryOrder2();
    List<Order> queryOrder3();
    List<Order> queryOrder4();

    int updateOrder(Order order);
    Order queryOrderById(int order_id);

    int addOrder(Order order);
}
