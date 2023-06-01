package kr.ac.kopo.model;

import java.sql.Date;

public class Survey {

	private int num;
	private String name;
	private Double offsetX;
	private Double offsetY;
	private int grade;
	private Date pubDate;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Double getOffsetX() {
		return offsetX;
	}
	public void setOffsetX(Double offsetX) {
		this.offsetX = offsetX;
	}
	public Double getOffsetY() {
		return offsetY;
	}
	public void setOffsetY(Double offsetY) {
		this.offsetY = offsetY;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public Date getPubDate() {
		return pubDate;
	}
	public void setPubDate(Date pubDate) {
		this.pubDate = pubDate;
	}
}