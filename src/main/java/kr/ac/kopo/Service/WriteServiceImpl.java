package kr.ac.kopo.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.Dao.WriteDao;
import kr.ac.kopo.model.Write;

@Service
public class WriteServiceImpl implements WriteService {

	@Autowired
	WriteDao dao;
	
	@Override
	public void add(Write item, int id) {

		dao.add(item, id);

	}

	@Override
	public List<Write> list() {
		
		return dao.list();
	}

	

	@Override
	public Write item(int id) {
		
		return dao.item(id);
	}

}
