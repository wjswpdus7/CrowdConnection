package kr.ac.kopo.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.Dao.WriteServiceThumbnail2Dao;

@Service
public class WriteServiceThumbnail2Impl implements WriteServiceThumbnail2 {

	@Autowired
	WriteServiceThumbnail2Dao dao;
	
	@Override
	public void add(String filename) {
		
			dao.add(filename);
	}

	@Override
	public String list(int id) {
		
		return dao.list(id);
	}

}
