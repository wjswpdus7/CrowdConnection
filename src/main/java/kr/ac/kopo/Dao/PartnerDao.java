package kr.ac.kopo.Dao;

import java.util.List;

import kr.ac.kopo.model.Write;

public interface PartnerDao {

	List<Write> list();

	void write(Write item);

	Write item(int id);

}
