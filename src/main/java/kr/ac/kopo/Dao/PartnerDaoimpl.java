package kr.ac.kopo.Dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.Write;

@Repository
public class PartnerDaoimpl implements PartnerDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Write> list() {
		return sql.selectList("partner.list");
	}

	@Override
	public void write(Write item) {
		sql.insert("partner.write", item);
	
	}

	@Override
	public Write item(int id) {
		return sql.selectOne("partner.item", id);
	}

}
