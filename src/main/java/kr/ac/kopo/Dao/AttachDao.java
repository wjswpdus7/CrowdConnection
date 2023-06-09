package kr.ac.kopo.Dao;

import java.util.List;

import kr.ac.kopo.model.Attach;

public interface AttachDao {

	void add(Attach attach);

	void thumbnailWrite(Attach thumbnail);

	void topImageWrite(Attach topImage);

	Attach thumbnail(int id);

	List<Attach> topImage(int id);

	List<Attach> attachs(int id);

}
