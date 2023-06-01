package kr.ac.kopo.Service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.Dao.SignDao;
import kr.ac.kopo.model.SignPath;



@Service
public class SignServiceImpl implements SignService {

	@Autowired
	SignDao dao;
	


	@Override
	public SignPath item(String string) {
		
		return dao.item(string);
	}


	@Override
	public void add(int id,String filepath, int memberId) {
		dao.add(id,filepath,memberId);
		
	}


	@Override
	public String item2(String name) {
		
		return dao.item2(name);
	}







}
