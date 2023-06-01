package kr.ac.kopo.Dao;



import kr.ac.kopo.model.SignPath;

public interface SignDao {

	void add(int id,String filepath, int memberId);

	SignPath item(String string);

	String item2(String name);

	


}
