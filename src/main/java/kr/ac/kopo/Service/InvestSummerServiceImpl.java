package kr.ac.kopo.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.Dao.InvestSummerDao;
import kr.ac.kopo.model.InvestAttachSummer;

@Service
public class InvestSummerServiceImpl implements InvestSummerService {

	@Autowired
	InvestSummerDao IsDao;
	
	

	@Override
	public void add(InvestAttachSummer item) {
		IsDao.add(item);
		
	}

}
