package kr.ac.kopo.Dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.Write;


@Repository
public class WriteDaoImpl implements WriteDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public void add(Write item, int id) {
		HashMap<String,Object> map = new HashMap<>();
		
		map.put("item",item);
		map.put("id", id);
		
		sql.insert("write.add", map);

	}

	@Override
	public List<Write> list() {
		
		return sql.selectList("write.list2");
	}


	@Override
	public Write item(int id) {
		
		return sql.selectOne("write.item", id);
	}
	
	
	
	

}
