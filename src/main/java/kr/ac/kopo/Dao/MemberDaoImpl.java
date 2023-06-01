package kr.ac.kopo.Dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.Member;
@Repository
public class MemberDaoImpl implements MemberDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public Member login(Member member) {
		// TODO Auto-generated method stub
		return sql.selectOne("member.login",member);
	}

	@Override
	public void signup(Member item) {
		sql.insert("member.signup",item);
	}

}
