package com.draka.hardi.web;
import com.draka.hardi.domain.CustomerAud;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/customerauds")
@Controller
@RooWebScaffold(path = "customerauds", formBackingObject = CustomerAud.class, update = false, delete = false, create = false)
public class CustomerAudController {
}
