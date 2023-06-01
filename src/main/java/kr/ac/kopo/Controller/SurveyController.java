package kr.ac.kopo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.Service.SurveyService;
import kr.ac.kopo.model.Member;
import kr.ac.kopo.model.Survey;

@Controller
@RequestMapping("/survey")
public class SurveyController {

	final String path = "survey/";
	
	@Autowired
	SurveyService service;
	
	@RequestMapping("/list")
	public String list() {
		
		return path + "list";
	}
	@GetMapping("/add")
	public String add() {
		
		return path + "add";
	}
	@PostMapping("/add")
	public String add(Survey item,@SessionAttribute("member")Member member) {
		service.add(item,member.getNum());
		return "redirect:list";
	}

}
