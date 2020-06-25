package com.packt.webstore.repository;

import com.packt.webstore.Domain.Order;

public interface OrderRepository {
    long saveOrder(Order order);
}
