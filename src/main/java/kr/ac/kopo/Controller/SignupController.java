package kr.ac.kopo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.Service.MemberService;
import kr.ac.kopo.model.Member;

@Controller
@RequestMapping("/signup")
public class SignupController {

	final String path = "signup/";
	@Autowired
	MemberService service;
	
	@GetMapping("/step1")
	public String step1 () {
		return path+"step1";
	}
	@GetMapping("/step2")
	public String step2 () {
		return path+"step2";
	}
	@PostMapping("/step2")
	public String step2(Member item) {
		service.signup(item);
		return path+"step3";
	}
}
