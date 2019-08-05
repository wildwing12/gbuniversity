package model.dto;

public class ScoreDTO {
	
	private int snum; 
	private String term;
	private int subcode;
	private String subname;
	private String proname;
	private String major;
	private String stdid;
	private String proid;
	private int liberal_arts;
	private int major_selection;
	private int essentials; 
	private double score;
	private double total;
	private int sumliberal;
	private int sumselection;
	private int sumEssentials;
	private int cnum;
	private String stdname;
	private String categories;
	private double term_grade;
	public int getSnum() {
		return snum;
	}
	public void setSnum(int snum) {
		this.snum = snum;
	}
	public String getTerm() {
		return term;
	}
	public void setTerm(String term) {
		this.term = term;
	}
	public int getSubcode() {
		return subcode;
	}
	public void setSubcode(int subcode) {
		this.subcode = subcode;
	}
	public String getSubname() {
		return subname;
	}
	public void setSubname(String subname) {
		this.subname = subname;
	}
	public String getProname() {
		return proname;
	}
	public void setProname(String proname) {
		this.proname = proname;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getStdid() {
		return stdid;
	}
	public void setStdid(String stdid) {
		this.stdid = stdid;
	}
	public String getProid() {
		return proid;
	}
	public void setProid(String proid) {
		this.proid = proid;
	}
	public int getLiberal_arts() {
		return liberal_arts;
	}
	public void setLiberal_arts(int liberal_arts) {
		this.liberal_arts = liberal_arts;
	}
	public int getMajor_selection() {
		return major_selection;
	}
	public void setMajor_selection(int major_selection) {
		this.major_selection = major_selection;
	}
	public int getEssentials() {
		return essentials;
	}
	public void setEssentials(int essentials) {
		this.essentials = essentials;
	}
	public double getScore() {
		return score;
	}
	public void setScore(double score) {
		this.score = score;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public int getSumliberal() {
		return sumliberal;
	}
	public void setSumliberal(int sumliberal) {
		this.sumliberal = sumliberal;
	}
	public int getSumselection() {
		return sumselection;
	}
	public void setSumselection(int sumselection) {
		this.sumselection = sumselection;
	}
	public int getSumEssentials() {
		return sumEssentials;
	}
	public void setSumEssentials(int sumEssentials) {
		this.sumEssentials = sumEssentials;
	}
	public int getCnum() {
		return cnum;
	}
	public void setCnum(int cnum) {
		this.cnum = cnum;
	}
	public String getStdname() {
		return stdname;
	}
	public void setStdname(String stdname) {
		this.stdname = stdname;
	}
	public String getCategories() {
		return categories;
	}
	public void setCategories(String categories) {
		this.categories = categories;
	}
	public double getTerm_grade() {
		return term_grade;
	}
	public void setTerm_grade(double term_grade) {
		this.term_grade = term_grade;
	}
	@Override
	public String toString() {
		return "ScoreDTO [snum=" + snum + ", term=" + term + ", subcode=" + subcode + ", subname=" + subname
				+ ", proname=" + proname + ", major=" + major + ", stdid=" + stdid + ", proid=" + proid
				+ ", liberal_arts=" + liberal_arts + ", major_selection=" + major_selection + ", essentials="
				+ essentials + ", score=" + score + ", total=" + total + ", sumliberal=" + sumliberal
				+ ", sumselection=" + sumselection + ", sumEssentials=" + sumEssentials + ", cnum=" + cnum
				+ ", stdname=" + stdname + ", categories=" + categories + ", term_grade=" + term_grade + "]";
	}
	
}
