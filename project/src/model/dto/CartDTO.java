package model.dto;

public class CartDTO {
	private int cnum; 
	private int subcode; 
	private String stdid; 
	private String proname; 
	private String major;
	private String stdname;
	private String eval;
	private int subnum;
	private String subname;
	private int eval_score1; 
	private int eval_score2; 
	private int eval_score3; 
	private int eval_score4; 
	private int eval_score5; 
	private int eval_score6; 
	private int eval_score7; 
	private int eval_score8; 
	private int eval_score9; 
	private String suggestion; 
	private String categories;
	private String term;
	private int eval_sum;
	public int getCnum() {
		return cnum;
	}
	public void setCnum(int cnum) {
		this.cnum = cnum;
	}
	public int getSubcode() {
		return subcode;
	}
	public void setSubcode(int subcode) {
		this.subcode = subcode;
	}
	public String getStdid() {
		return stdid;
	}
	public void setStdid(String stdid) {
		this.stdid = stdid;
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
	public String getStdname() {
		return stdname;
	}
	public void setStdname(String stdname) {
		this.stdname = stdname;
	}
	public String getEval() {
		return eval;
	}
	public void setEval(String eval) {
		this.eval = eval;
	}
	public int getSubnum() {
		return subnum;
	}
	public void setSubnum(int subnum) {
		this.subnum = subnum;
	}
	public String getSubname() {
		return subname;
	}
	public void setSubname(String subname) {
		this.subname = subname;
	}
	public int getEval_score1() {
		return eval_score1;
	}
	public void setEval_score1(int eval_score1) {
		this.eval_score1 = eval_score1;
	}
	public int getEval_score2() {
		return eval_score2;
	}
	public void setEval_score2(int eval_score2) {
		this.eval_score2 = eval_score2;
	}
	public int getEval_score3() {
		return eval_score3;
	}
	public void setEval_score3(int eval_score3) {
		this.eval_score3 = eval_score3;
	}
	public int getEval_score4() {
		return eval_score4;
	}
	public void setEval_score4(int eval_score4) {
		this.eval_score4 = eval_score4;
	}
	public int getEval_score5() {
		return eval_score5;
	}
	public void setEval_score5(int eval_score5) {
		this.eval_score5 = eval_score5;
	}
	public int getEval_score6() {
		return eval_score6;
	}
	public void setEval_score6(int eval_score6) {
		this.eval_score6 = eval_score6;
	}
	public int getEval_score7() {
		return eval_score7;
	}
	public void setEval_score7(int eval_score7) {
		this.eval_score7 = eval_score7;
	}
	public int getEval_score8() {
		return eval_score8;
	}
	public void setEval_score8(int eval_score8) {
		this.eval_score8 = eval_score8;
	}
	public int getEval_score9() {
		return eval_score9;
	}
	public void setEval_score9(int eval_score9) {
		this.eval_score9 = eval_score9;
	}
	public String getSuggestion() {
		return suggestion;
	}
	public void setSuggestion(String suggestion) {
		this.suggestion = suggestion;
	}
	public String getCategories() {
		return categories;
	}
	public void setCategories(String categories) {
		this.categories = categories;
	}
	public String getTerm() {
		return term;
	}
	public void setTerm(String term) {
		this.term = term;
	}
	public int getEval_sum() {
		return eval_sum;
	}
	public void setEval_sum(int eval_sum) {
		this.eval_sum = eval_sum;
	}
	@Override
	public String toString() {
		return "CartDTO [cnum=" + cnum + ", subcode=" + subcode + ", stdid=" + stdid + ", proname=" + proname
				+ ", major=" + major + ", stdname=" + stdname + ", eval=" + eval + ", subnum=" + subnum + ", subname="
				+ subname + ", eval_score1=" + eval_score1 + ", eval_score2=" + eval_score2 + ", eval_score3="
				+ eval_score3 + ", eval_score4=" + eval_score4 + ", eval_score5=" + eval_score5 + ", eval_score6="
				+ eval_score6 + ", eval_score7=" + eval_score7 + ", eval_score8=" + eval_score8 + ", eval_score9="
				+ eval_score9 + ", suggestion=" + suggestion + ", categories=" + categories + ", term=" + term
				+ ", eval_sum=" + eval_sum + "]";
	}
	public CartDTO(int cnum, int subcode, String stdid, String proname, String major, String stdname, String eval,
			int subnum, String subname, int eval_score1, int eval_score2, int eval_score3, int eval_score4,
			int eval_score5, int eval_score6, int eval_score7, int eval_score8, int eval_score9, String suggestion,
			String categories, String term, int eval_sum) {
		this.cnum = cnum;
		this.subcode = subcode;
		this.stdid = stdid;
		this.proname = proname;
		this.major = major;
		this.stdname = stdname;
		this.eval = eval;
		this.subnum = subnum;
		this.subname = subname;
		this.eval_score1 = eval_score1;
		this.eval_score2 = eval_score2;
		this.eval_score3 = eval_score3;
		this.eval_score4 = eval_score4;
		this.eval_score5 = eval_score5;
		this.eval_score6 = eval_score6;
		this.eval_score7 = eval_score7;
		this.eval_score8 = eval_score8;
		this.eval_score9 = eval_score9;
		this.suggestion = suggestion;
		this.categories = categories;
		this.term = term;
		this.eval_sum = eval_sum;
	}
	public CartDTO() {
	}
	
}
