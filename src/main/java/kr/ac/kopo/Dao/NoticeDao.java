package kr.ac.kopo.Dao;

import java.util.List;

import kr.ac.kopo.model.Notice;
import kr.ac.kopo.pager.Pager;

public interface NoticeDao {

	int total(Pager pager);

	List<Notice> list(Pager pager);

	void add(Notice item);

	Notice item(int id);

	void update(Notice item);

}
