package kr.ac.kopo.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.Dao.InvestAttachDao;
import kr.ac.kopo.model.InvestAttach;

@Service
public class InvestAttachServiceImpl implements InvestAttachService {

	@Autowired
	InvestAttachDao dao;
	
	@Override
	public void add(List<InvestAttach> list) {
		
		System.out.println(list.size() + "service");
		
		dao.add(list);

	}

}
