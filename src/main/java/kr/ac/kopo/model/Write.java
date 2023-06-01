package kr.ac.kopo.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Write {
		
	private int id;
	private String title;
	private String subTitle;
	private int goolMoney;
	private int tick;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date endDate;
	private String homepage;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date pubDate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSubTitle() {
		return subTitle;
	}
	public void setSubTitle(String subTitle) {
		this.subTitle = subTitle;
	}
	public int getGoolMoney() {
		return goolMoney;
	}
	public void setGoolMoney(int goolMoney) {
		this.goolMoney = goolMoney;
	}
	public Date getPubDate() {
		return pubDate;
	}
	public void setPubDate(Date pubDate) {
		this.pubDate = pubDate;
	}
	public int getTick() {
		return tick;
	}
	public void setTick(int tick) {
		this.tick = tick;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}

	
	
	
	
	
	
}
