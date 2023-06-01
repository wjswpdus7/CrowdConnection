package kr.ac.kopo.Service;

import kr.ac.kopo.model.SignPath;

public interface SignService {

	void add(int id,String filepath, int memberId);


	 String item2(String name);


	SignPath item(String string);


}
