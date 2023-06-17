package kr.ac.kopo.Dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.Comments;

@Repository
public class CommentDaoImpl implements CommentDao {

	@Autowired
	SqlSession sql;

	@Override
	public void add(Comments item) {
		sql.insert("comment.add", item);
	}

	@Override
	public List<Comments> list(int id) {
		return sql.selectList("comment.list", id);
	}

	@Override
	public void delete(int id) {
		sql.delete("comment.delete", id);
	}
	
}
