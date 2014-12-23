package com.draka.hardi.web;
import com.draka.hardi.domain.Revisions;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/revisionses")
@Controller
@RooWebScaffold(path = "revisionses", formBackingObject = Revisions.class, update = false, delete = false, create = false)
public class RevisionsController {
}
