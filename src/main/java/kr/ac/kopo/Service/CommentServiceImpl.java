package kr.ac.kopo.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.Dao.CommentDao;
import kr.ac.kopo.model.Comments;

@Service
public class CommentServiceImpl implements CommentService {

	@Autowired
	CommentDao dao;

	@Override
	public void add(Comments item) {
		dao.add(item);
	}

	@Override
	public List<Comments> list(int id) {
		return dao.list(id);
	}

	@Override
	public void delete(int id) {
		dao.delete(id);
		
	}
}
