package com.draka.hardi.web;
import com.draka.hardi.domain.PolicyType;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/policytypes")
@Controller
@RooWebScaffold(path = "policytypes", formBackingObject = PolicyType.class)
public class PolicyTypeController {
}
