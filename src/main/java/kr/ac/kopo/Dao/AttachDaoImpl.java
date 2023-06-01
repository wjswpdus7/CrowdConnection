package kr.ac.kopo.Dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.Attach;

@Repository
public class AttachDaoImpl implements AttachDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public void add(Attach attach) {
		sql.insert("attach.add", attach);

	}

}
