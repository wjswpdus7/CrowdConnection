package kr.ac.kopo.Service;

import java.util.List;

import kr.ac.kopo.model.Write;

public interface PartnerService {

	List<Write> list();

	void write(Write item);

	Write item(int id);

}
