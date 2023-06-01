package kr.ac.kopo.Dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.InvestAttach;

@Repository
public class InvestAttachDaoImpl implements InvestAttachDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public void add(List<InvestAttach> list) {
		
		
		for (InvestAttach attachItem : list) {
	
	        sql.insert("InvestAttach.add", attachItem);
	    }
	}

}
