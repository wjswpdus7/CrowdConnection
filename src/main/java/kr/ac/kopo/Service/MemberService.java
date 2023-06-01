package kr.ac.kopo.Service;

import kr.ac.kopo.model.Member;

public interface MemberService {

	boolean login(Member member);

	void signup(Member item);

	

}
