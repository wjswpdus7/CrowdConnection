package kr.ac.kopo.Dao;

import java.util.List;

import kr.ac.kopo.model.Comments;

public interface CommentDao {

	void add(Comments item);

	List<Comments> list(int id);

	void delete(int id);

}
