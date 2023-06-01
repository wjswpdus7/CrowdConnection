package kr.ac.kopo.Dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.InvestAttachSummer;

@Repository
public class InvestSummerDaoImpl implements InvestSummerDao {

	@Autowired
	SqlSession sql;
	


	@Override
	public void add(InvestAttachSummer item) {
		sql.insert("InvestSummer.add", item);
		
	}

}
