package kr.ac.kopo.Dao;

import java.util.List;

import kr.ac.kopo.model.Write;

public interface WriteDao {

	void add(Write item, int id);

	List<Write> list();


	Write item(int id);

}
