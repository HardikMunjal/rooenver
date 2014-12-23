package com.draka.hardi.web;
import com.draka.hardi.domain.PolicyClaim;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/policyclaims")
@Controller
@RooWebScaffold(path = "policyclaims", formBackingObject = PolicyClaim.class)
public class PolicyClaimController {
}
