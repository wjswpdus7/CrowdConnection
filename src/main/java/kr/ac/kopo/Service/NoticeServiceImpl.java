package kr.ac.kopo.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.Dao.AttachDao;
import kr.ac.kopo.Dao.NoticeDao;
import kr.ac.kopo.model.Attach;
import kr.ac.kopo.model.Notice;
import kr.ac.kopo.pager.Pager;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	NoticeDao dao;
	
	@Autowired
	AttachDao attachDao;
	
	@Override
	public List<Notice> list(Pager pager) {
		int total = dao.total(pager);
		
		pager.setTotal(total);
		
		return dao.list(pager);
	}

	@Override
	@Transactional
	public void add(Notice item) {
		dao.add(item);
		
		if(item.getAttachs() != null) {
			for(Attach attach : item.getAttachs()) {
				attach.setNum(item.getNum());
		
				attachDao.add(attach);
		}
	}

	}

	@Override
	public Notice item(int id) {
		return dao.item(id);
	}

	@Override
	@Transactional
	public void update(Notice item) {
		dao.update(item);
		
		if(item.getAttach() != null) {
			for(Attach attach : item.getAttachs()) {
				attach.setNum(item.getNum());
				
				attachDao.add(attach);
			}
		}

	}

}
