package model.dto;

public class ProfessorDTO {
	private String proid; 
	private String passwd; 
	private String proname; 
	private int age; 
	private String hp; 
	private String proaddress; 
	private String proaddress2; 
	private String email; 
	private String major; 
	private String part;
	private String pro_dgree;
	public String getProid() {
		return proid;
	}
	public void setProid(String proid) {
		this.proid = proid;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getProname() {
		return proname;
	}
	public void setProname(String proname) {
		this.proname = proname;
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
	public String getProaddress() {
		return proaddress;
	}
	public void setProaddress(String proaddress) {
		this.proaddress = proaddress;
	}
	public String getProaddress2() {
		return proaddress2;
	}
	public void setProaddress2(String proaddress2) {
		this.proaddress2 = proaddress2;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getPart() {
		return part;
	}
	public void setPart(String part) {
		this.part = part;
	}
	public String getPro_dgree() {
		return pro_dgree;
	}
	public void setPro_dgree(String pro_dgree) {
		this.pro_dgree = pro_dgree;
	}
	@Override
	public String toString() {
		return "ProfessorDTO [proid=" + proid + ", passwd=" + passwd + ", proname=" + proname + ", age=" + age + ", hp="
				+ hp + ", proaddress=" + proaddress + ", proaddress2=" + proaddress2 + ", email=" + email + ", major="
				+ major + ", part=" + part + ", pro_dgree=" + pro_dgree + "]";
	} 
}
