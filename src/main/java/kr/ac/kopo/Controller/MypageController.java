package kr.ac.kopo.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	final String path = "mypage/";
	
	
	@GetMapping("/list")
	public String list() {
		return path + "list";
	}
	
	@GetMapping("/produce")
	public String produce() {
		return path + "produce";
	}
	@GetMapping("/interest")
	public String interset() {
		return path + "interest";
	}
	@GetMapping("/config")
	public String config() {
		return path + "config";
	}

}
