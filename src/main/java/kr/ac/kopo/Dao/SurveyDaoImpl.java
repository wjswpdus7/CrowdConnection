package kr.ac.kopo.Dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.Survey;

@Repository
public class SurveyDaoImpl implements SurveyDao {

	@Autowired
	SqlSession sql;

	@Override
	public List<Survey> list() {
		// TODO Auto-generated method stub
		return sql.selectList("survey.list");
	}

	@Override
	public void add(Survey item, int num) {
		HashMap<String,Object> map = new HashMap<>();
		
		map.put("item",item);
		map.put("num",num);
		
		sql.insert("survey.add",map);
	}



	

}
