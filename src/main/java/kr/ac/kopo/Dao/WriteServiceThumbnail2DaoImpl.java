package kr.ac.kopo.Dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WriteServiceThumbnail2DaoImpl implements WriteServiceThumbnail2Dao {

	@Autowired
	SqlSession sql;
	
	
	@Override
	public void add(String filename) {
		sql.insert("WriteAttachThumbnail2.add", filename);

	}


	@Override
	public String list(int id) {
		
		return sql.selectOne("WriteAttachThumbnail2.list", id);
	}

}
