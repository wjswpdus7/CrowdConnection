package kr.ac.kopo.model;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class InvestAttach {

	private int id;
	private String filename;
	private List<MultipartFile> files;
	private List<InvestAttach> attachs;
	
	
	public List<MultipartFile> getFiles() {
		return files;
	}
	public void setFiles(List<MultipartFile> files) {
		this.files = files;
	}
	public List<InvestAttach> getAttachs() {
		return attachs;
	}
	public void setAttachs(List<InvestAttach> attachs) {
		this.attachs = attachs;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}

	

	
	
	
	
}
