package kr.ac.kopo.Dao;

import java.util.List;

import kr.ac.kopo.model.Survey;

public interface SurveyDao {

	List<Survey> list();

	void add(Survey item, int num);

}
