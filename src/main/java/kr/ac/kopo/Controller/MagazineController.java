package kr.ac.kopo.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/magazine")
public class MagazineController {
	final String path = "magazine/";
	
	@RequestMapping("/list")
	public String list() {
		
		return path + "list";
	}
	
	@RequestMapping("/detail")
	public String detail() {
		
		return path + "detail";
	}
}
