package kr.ac.kopo.model;

import java.util.List;


public class Write {
		
	private int id;
	private String title;
	private String subTitle;
	private String homepage;
	private String pubDate;
	private String endDate;
	private String leftDate;
	private String tel;
	private String mail;
	private String url;
	private String name;
	private String address;
	
	public String getTel() {
		return tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	private Attach thumbnail;
	private List<Attach> topImage;
	private String uuid;
	private String filename;
	
	private int goolMoney;
	private int tick;
	
	private int partnerCategory;
	
	
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
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
	
	public int getTick() {
		return tick;
	}
	public void setTick(int tick) {
		this.tick = tick;
	}
	
	public String getPubDate() {
		return pubDate;
	}
	public void setPubDate(String pubDate) {
		this.pubDate = pubDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}
	public Attach getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(Attach thumbnail) {
		this.thumbnail = thumbnail;
	}
	public List<Attach> getTopImage() {
		return topImage;
	}
	public void setTopImage(List<Attach> topImage) {
		this.topImage = topImage;
	}
	public int getPartnerCategory() {
		return partnerCategory;
	}
	public void setPartnerCategory(int partnerCategory) {
		this.partnerCategory = partnerCategory;
	}
	public String getLeftDate() {
		return leftDate;
	}
	public void setLeftDate(String leftDate) {
		this.leftDate = leftDate;
	}
	
	
	
	

	
	
	
	
	
	
}
