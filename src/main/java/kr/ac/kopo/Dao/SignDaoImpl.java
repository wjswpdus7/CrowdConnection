package kr.ac.kopo.Dao;


import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.SignPath;

@Repository
public class SignDaoImpl implements SignDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public SignPath item(String string) {
		
		return sql.selectOne("sign.list", string);
	}

	@Override
	public void add(int id,String filepath, int memberId) {
		HashMap<String,Object> map = new HashMap<>();
		
		System.out.println(filepath + " daoImpl");
		System.out.println(memberId + " daoImpl");
		
		map.put("id", id);
		map.put("filename", filepath);
		map.put("memberId", memberId);
		
		sql.insert("sign.add",map);
	}

	@Override
	public String item2(String name) {
		
		return sql.selectOne("sign.item",name);
	}






}
