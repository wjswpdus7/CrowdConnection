package kr.ac.kopo.Controller;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/partner")
public class PartnerController {
	
	final String path = "partner/";
	
	@RequestMapping("/list")
	public String list() {
		
		return path + "list";
	}
	
}
