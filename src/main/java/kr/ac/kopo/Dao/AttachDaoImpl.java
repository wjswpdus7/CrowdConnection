package kr.ac.kopo.Dao;

import java.util.List;

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

	@Override
	public void thumbnailWrite(Attach thumbnail) {
		sql.insert("partnerAttach.add", thumbnail);
	}

	@Override
	public void topImageWrite(Attach topImage) {
		sql.insert("partnerAttach.add", topImage);
	}

	@Override
	public Attach thumbnail(int id) {
		return sql.selectOne("partnerAttach.thumbnail", id);
	}

	@Override
	public List<Attach> topImage(int id) {
		return sql.selectList("partnerAttach.topImage", id);
	}

	@Override
	public List<Attach> attachs(int id) {
		return sql.selectList("partnerAttach.attachs", id);
	}

}
