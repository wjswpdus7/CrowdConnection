package kr.ac.kopo.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.Dao.AttachDao;
import kr.ac.kopo.model.Attach;

@Service
public class AttachServiceImpl implements AttachService {

	@Autowired
	AttachDao dao;
	
	@Override
	public Attach thumbnail(int id) {
		return dao.thumbnail(id);
	}

	@Override
	public List<Attach> topImage(int id) {
		return dao.topImage(id);
	}

	@Override
	public List<Attach> attachs(int id) {
		return dao.attachs(id);
	}

}
