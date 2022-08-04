package com.dto;

public class CategoryDTO {

	private int ctno;
	private String ctnm;
	
	public CategoryDTO() {
		super();
	}

	public CategoryDTO(int ctno, String ctnm) {
		super();
		this.ctno = ctno;
		this.ctnm = ctnm;
	}

	public int getCtno() {
		return ctno;
	}

	public void setCtno(int ctno) {
		this.ctno = ctno;
	}

	public String getCtnm() {
		return ctnm;
	}

	public void setCtnm(String ctnm) {
		this.ctnm = ctnm;
	}
	
	
	
}
