package com.draka.hardi.web;
import com.draka.hardi.domain.PolicyCustomerAud;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/policycustomerauds")
@Controller
@RooWebScaffold(path = "policycustomerauds", formBackingObject = PolicyCustomerAud.class, update = false, delete = false, create = false)
public class PolicyCustomerAudController {
}
