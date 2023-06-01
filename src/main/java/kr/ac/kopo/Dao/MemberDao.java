package kr.ac.kopo.Dao;

import kr.ac.kopo.model.Member;

public interface MemberDao {

	Member login(Member member);

	void signup(Member item);

}
