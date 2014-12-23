package com.draka.hardi.web;
import com.draka.hardi.domain.PolicyCustomer;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/policycustomers")
@Controller
@RooWebScaffold(path = "policycustomers", formBackingObject = PolicyCustomer.class)
public class PolicyCustomerController {
}
