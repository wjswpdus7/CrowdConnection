package kr.ac.kopo.Service;

import java.util.List;

import kr.ac.kopo.model.Survey;

public interface SurveyService {

	List<Survey> list();

	void add(Survey item, int num);
}
