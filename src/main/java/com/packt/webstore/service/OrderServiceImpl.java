package com.packt.webstore.service;

import com.packt.webstore.domain.Order;
import com.packt.webstore.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl implements OrderService{
    @Autowired
    private OrderRepository orderRepository;
    @Override
    public Long saveOrder(Order order) {
        return orderRepository.saveOrder(order);
    }
}
