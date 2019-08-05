package model.dto;

public class RegisterDTO {
	private int subcode;
	private String term;
	private int cnum;
	private String stdid;
	private String major;
	private String subname;
	private String categories;
	private String proname; 
	private int subnum;
	private String proid;
	public int getSubcode() {
		return subcode;
	}
	public void setSubcode(int subcode) {
		this.subcode = subcode;
	}
	public String getTerm() {
		return term;
	}
	public void setTerm(String term) {
		this.term = term;
	}
	public int getCnum() {
		return cnum;
	}
	public void setCnum(int cnum) {
		this.cnum = cnum;
	}
	public String getStdid() {
		return stdid;
	}
	public void setStdid(String stdid) {
		this.stdid = stdid;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getSubname() {
		return subname;
	}
	public void setSubname(String subname) {
		this.subname = subname;
	}
	public String getCategories() {
		return categories;
	}
	public void setCategories(String categories) {
		this.categories = categories;
	}
	public String getProname() {
		return proname;
	}
	public void setProname(String proname) {
		this.proname = proname;
	}
	public int getSubnum() {
		return subnum;
	}
	public void setSubnum(int subnum) {
		this.subnum = subnum;
	}
	public String getProid() {
		return proid;
	}
	public void setProid(String proid) {
		this.proid = proid;
	}
	@Override
	public String toString() {
		return "RegisterDTO [subcode=" + subcode + ", term=" + term + ", cnum=" + cnum + ", stdid=" + stdid + ", major="
				+ major + ", subname=" + subname + ", categories=" + categories + ", proname=" + proname + ", subnum="
				+ subnum + ", proid=" + proid + "]";
	}
	
}
