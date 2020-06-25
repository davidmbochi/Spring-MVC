package com.packt.webstore.repository;

import com.packt.webstore.Domain.Customer;

import java.util.List;

public interface CustomerRepository {
    List<Customer> getAllCustomers();
    public void addCustomer(Customer customer);
}
