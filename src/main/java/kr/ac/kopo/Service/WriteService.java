package kr.ac.kopo.Service;

import java.util.List;

import kr.ac.kopo.model.Write;

public interface WriteService {

	List<Write> list();

	void add(Write item, int id);


	Write item(int id);



	

}
