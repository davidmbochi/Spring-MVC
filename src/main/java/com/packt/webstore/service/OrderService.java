package com.packt.webstore.service;

import com.packt.webstore.Domain.Order;

public interface OrderService {
    Long saveOrder(Order order);
}
