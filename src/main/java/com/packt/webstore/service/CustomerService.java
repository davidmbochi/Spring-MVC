package com.packt.webstore.service;

import com.packt.webstore.Domain.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> getAllCustomers();
    public void addCustomer(Customer customer);
}
