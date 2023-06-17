package kr.ac.kopo.Service;

import java.util.List;

import kr.ac.kopo.model.Comments;

public interface CommentService {

	void add(Comments item);

	List<Comments> list(int id);

	void delete(int id);

}
