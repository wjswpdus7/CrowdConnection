package kr.ac.kopo.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.Dao.AttachDao;
import kr.ac.kopo.Dao.PartnerDao;
import kr.ac.kopo.model.Attach;
import kr.ac.kopo.model.Write;

@Service
public class PartnerServiceImpl implements PartnerService {

	@Autowired
	PartnerDao dao;
	
	@Autowired
	AttachDao attachDao;
	
	@Override
	public List<Write> list() {				
		return dao.list();
	}

	@Override
	public void write(Write item) {
		dao.write(item);
		
		
		Attach thumbnail = item.getThumbnail();
		thumbnail.setWriteId(item.getId());
		thumbnail.setType(1);
		attachDao.thumbnailWrite(thumbnail);
		
		for(Attach topImage : item.getTopImage()) {
			topImage.setWriteId(item.getId());
			topImage.setType(2);
			attachDao.topImageWrite(topImage);
		}

	}

	@Override
	public Write item(int id) {
		return dao.item(id);
	}
}
