package kr.ac.kopo.Dao;

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
	
}
