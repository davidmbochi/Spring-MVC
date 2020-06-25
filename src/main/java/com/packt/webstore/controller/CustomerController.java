package com.packt.webstore.controller;

import com.packt.webstore.Domain.Customer;
import com.packt.webstore.service.CustomerService;
import com.packt.webstore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CustomerController {
    @Autowired
    private CustomerService customerService;

    @RequestMapping("/customers")
    public String getAllCustomers(Model model){
        model.addAttribute("customers",customerService.getAllCustomers());
        return "customers";
    }
    @RequestMapping(value = "/customers/add",method = RequestMethod.GET)
    public String getAddCustomerForm(@ModelAttribute("newCustomer")Customer customer){
        return "addCustomer";
    }
    @RequestMapping(value = "/customers/add")
    public String processAddCustomerForm(@ModelAttribute("newCustomer") Customer customer){
        customerService.addCustomer(customer);
        return "redirect:/customers";
    }
}
