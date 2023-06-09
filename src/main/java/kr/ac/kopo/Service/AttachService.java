package kr.ac.kopo.Service;

import java.util.List;

import kr.ac.kopo.model.Attach;

public interface AttachService {

	Attach thumbnail(int id);

	List<Attach> topImage(int id);

	List<Attach> attachs(int id);

}
