package model.dto;

public class StudentDTO {
	private String stdid; 
	private String passwd;
	private String stdname; 
	private int age;
	private String hp;
	private String major;
	private String stdaddress;
	private String stdaddress2;
	private String stdemail;
	private String subject1;
	private String subject2;
	private String subject3; 
	private String subject4;
	private String subject5; 
	private String subject6; 
	private String subject7; 
	private String subject8; 
	private String subject9;
	private String subject10; 
	private int totalscoer; 
	private String dgree;
	public String getStdid() {
		return stdid;
	}
	public void setStdid(String stdid) {
		this.stdid = stdid;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getStdname() {
		return stdname;
	}
	public void setStdname(String stdname) {
		this.stdname = stdname;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getStdaddress() {
		return stdaddress;
	}
	public void setStdaddress(String stdaddress) {
		this.stdaddress = stdaddress;
	}
	public String getStdaddress2() {
		return stdaddress2;
	}
	public void setStdaddress2(String stdaddress2) {
		this.stdaddress2 = stdaddress2;
	}
	public String getStdemail() {
		return stdemail;
	}
	public void setStdemail(String stdemail) {
		this.stdemail = stdemail;
	}
	public String getSubject1() {
		return subject1;
	}
	public void setSubject1(String subject1) {
		this.subject1 = subject1;
	}
	public String getSubject2() {
		return subject2;
	}
	public void setSubject2(String subject2) {
		this.subject2 = subject2;
	}
	public String getSubject3() {
		return subject3;
	}
	public void setSubject3(String subject3) {
		this.subject3 = subject3;
	}
	public String getSubject4() {
		return subject4;
	}
	public void setSubject4(String subject4) {
		this.subject4 = subject4;
	}
	public String getSubject5() {
		return subject5;
	}
	public void setSubject5(String subject5) {
		this.subject5 = subject5;
	}
	public String getSubject6() {
		return subject6;
	}
	public void setSubject6(String subject6) {
		this.subject6 = subject6;
	}
	public String getSubject7() {
		return subject7;
	}
	public void setSubject7(String subject7) {
		this.subject7 = subject7;
	}
	public String getSubject8() {
		return subject8;
	}
	public void setSubject8(String subject8) {
		this.subject8 = subject8;
	}
	public String getSubject9() {
		return subject9;
	}
	public void setSubject9(String subject9) {
		this.subject9 = subject9;
	}
	public String getSubject10() {
		return subject10;
	}
	public void setSubject10(String subject10) {
		this.subject10 = subject10;
	}
	public int getTotalscoer() {
		return totalscoer;
	}
	public void setTotalscoer(int totalscoer) {
		this.totalscoer = totalscoer;
	}
	public String getDgree() {
		return dgree;
	}
	public void setDgree(String dgree) {
		this.dgree = dgree;
	}
	@Override
	public String toString() {
		return "Strudent [stdid=" + stdid + ", passwd=" + passwd + ", stdname=" + stdname + ", age=" + age + ", hp="
				+ hp + ", major=" + major + ", stdaddress=" + stdaddress + ", stdaddress2=" + stdaddress2
				+ ", stdemail=" + stdemail + ", subject1=" + subject1 + ", subject2=" + subject2 + ", subject3="
				+ subject3 + ", subject4=" + subject4 + ", subject5=" + subject5 + ", subject6=" + subject6
				+ ", subject7=" + subject7 + ", subject8=" + subject8 + ", subject9=" + subject9 + ", subject10="
				+ subject10 + ", totalscoer=" + totalscoer + ", dgree=" + dgree + "]";
	}
	public StudentDTO(String stdid, String passwd, String stdname, int age, String hp, String major, String stdaddress,
			String stdaddress2, String stdemail, String subject1, String subject2, String subject3, String subject4,
			String subject5, String subject6, String subject7, String subject8, String subject9, String subject10,
			int totalscoer, String dgree) {
		super();
		this.stdid = stdid;
		this.passwd = passwd;
		this.stdname = stdname;
		this.age = age;
		this.hp = hp;
		this.major = major;
		this.stdaddress = stdaddress;
		this.stdaddress2 = stdaddress2;
		this.stdemail = stdemail;
		this.subject1 = subject1;
		this.subject2 = subject2;
		this.subject3 = subject3;
		this.subject4 = subject4;
		this.subject5 = subject5;
		this.subject6 = subject6;
		this.subject7 = subject7;
		this.subject8 = subject8;
		this.subject9 = subject9;
		this.subject10 = subject10;
		this.totalscoer = totalscoer;
		this.dgree = dgree;
	}
	public StudentDTO() {
	} 
	
}
