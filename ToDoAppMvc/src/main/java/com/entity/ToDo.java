package com.entity;

import java.time.LocalDate;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ToDo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String titleString;
	private String contentString;
	private Date  date;
	
	//LocalDateTime currentTime = LocalDateTime.parse(LocalDateTime.now().toString(), DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
	

	public ToDo(int id, String titleString, String contentString, Date date) {
		super();
		this.id = id;
		this.titleString = titleString;
		this.contentString = contentString;
		this.date = date;
	}

	public ToDo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getTitleString() {
		return titleString;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setTitleString(String titleString) {
		this.titleString = titleString;
	}

	public String getContentString() {
		return contentString;
	}

	public void setContentString(String contentString) {
		this.contentString = contentString;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "ToDo [id=" + id + ", titleString=" + titleString + ", contentString=" + contentString + ", date=" + date
				+ "]";
	}

	
	
	
	
	

}
