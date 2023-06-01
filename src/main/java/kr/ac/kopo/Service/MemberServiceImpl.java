package kr.ac.kopo.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.Dao.MemberDao;
import kr.ac.kopo.model.Member;
@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao dao;

	@Override
	public boolean login(Member member) {
		Member item = dao.login(member);
		if(item !=null) {
			member.setNum(item.getNum());
			member.setId(item.getId());
			member.setPassword(null);
			member.setGrade(item.getGrade());
			member.setName(item.getName());
			return true;
			
		}else
		return false;
	}

	@Override
	public void signup(Member item) {
		dao.signup(item);
	}

	}

