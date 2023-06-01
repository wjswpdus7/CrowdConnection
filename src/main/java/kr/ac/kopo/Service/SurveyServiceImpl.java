package kr.ac.kopo.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.Dao.SurveyDao;
import kr.ac.kopo.model.Survey;

@Service
public class SurveyServiceImpl implements SurveyService {

	@Autowired
	SurveyDao dao;

	@Override
	public List<Survey> list() {
		// TODO Auto-generated method stub
		return dao.list();
	}

	@Override
	public void add(Survey item, int num) {
		// TODO Auto-generated method stub
		dao.add(item,num);
		
	}


}
