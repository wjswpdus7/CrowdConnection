package kr.ac.kopo.Service;

import java.util.List;

import kr.ac.kopo.model.Notice;
import kr.ac.kopo.pager.Pager;

public interface NoticeService {

	List<Notice> list(Pager pager);

	void add(Notice item);

	Notice item(int id);

	void update(Notice item);

}
