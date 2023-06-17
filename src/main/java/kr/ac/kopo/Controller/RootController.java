package kr.ac.kopo.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.kopo.Service.MemberService;
import kr.ac.kopo.model.Member;

@Controller
@RequestMapping("/")
public class RootController {
	
	@Autowired
	MemberService service;
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("/login")
	public String login(@RequestParam(required = false)String url,HttpServletRequest request) {
		if(url != null) {
			HttpSession session = request.getSession();
			session.setAttribute("target_url", url);
		}
		
		return "login";
	}
	@PostMapping("/login")
	public String login (Member member,HttpSession session) {
		if(service.login(member)) {
			session.setAttribute("member", member);
			String target_url = (String) session.getAttribute("target_url");
			session.removeAttribute("target_url");
			
			
			if(target_url==null) {
				return "redirect:.";
			}
			else
				return "redirect:"+target_url;
		}else{
			return "redirect:login";
		}
	}
	@GetMapping("/signup")
	public String signup() {
		return "signup";
	}
	@PostMapping("/signup")
	public String signup(Member item) {
		service.signup(item);
		return "redirect:.";
	}
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:.";
	}
	

	@GetMapping("/writeselect")
	public String writeselect() {
		
		return "writeselect";
	}
	

	
}
