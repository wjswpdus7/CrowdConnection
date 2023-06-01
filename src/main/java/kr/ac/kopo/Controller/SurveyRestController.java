package kr.ac.kopo.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.ac.kopo.Service.SurveyService;
import kr.ac.kopo.model.Survey;

@RestController
@RequestMapping("/api/survey")
public class SurveyRestController {

	@Autowired
	SurveyService service;
	
	@GetMapping
	public List<Survey> list() {
		List<Survey> list = service.list();
		return list;
	}
}
