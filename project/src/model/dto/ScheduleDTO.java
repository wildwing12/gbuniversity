package model.dto;

import java.sql.Date;

public class ScheduleDTO {
	private int schnum;//스케줄 번호 
	private String  eday;//스케줄 입력  
	private String event;//이벤트 
	private String writer;//등록인
	private Date write_date;//등록 날짜 
	private int anum;
	private String plan;
	public int getSchnum() {
		return schnum;
	}
	public void setSchnum(int schnum) {
		this.schnum = schnum;
	}
	public String getEday() {
		return eday;
	}
	public void setEday(String eday) {
		this.eday = eday;
	}
	public String getEvent() {
		return event;
	}
	public void setEvent(String event) {
		this.event = event;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
	public int getAnum() {
		return anum;
	}
	public void setAnum(int anum) {
		this.anum = anum;
	}
	public String getPlan() {
		return plan;
	}
	public void setPlan(String plan) {
		this.plan = plan;
	}
	@Override
	public String toString() {
		return "ScheduleDTO [schnum=" + schnum + ", eday=" + eday + ", event=" + event + ", writer=" + writer
				+ ", write_date=" + write_date + ", anum=" + anum + ", plan=" + plan + "]";
	}
	
	
	
}
