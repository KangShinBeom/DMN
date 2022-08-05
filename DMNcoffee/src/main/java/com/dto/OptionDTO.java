package com.dto;

public class OptionDTO {
	
	private int optno;
	private String optname;
	private int optprice;
	private int ctno;
	
	public OptionDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OptionDTO(int optno, String optname, int optprice, int ctno) {
		super();
		this.optno = optno;
		this.optname = optname;
		this.optprice = optprice;
		this.ctno = ctno;
	}

	public int getOptno() {
		return optno;
	}

	public void setOptno(int optno) {
		this.optno = optno;
	}

	public String getOptname() {
		return optname;
	}

	public void setOptname(String optname) {
		this.optname = optname;
	}

	public int getOptprice() {
		return optprice;
	}

	public void setOptprice(int optprice) {
		this.optprice = optprice;
	}

	public int getCtno() {
		return ctno;
	}

	public void setCtno(int ctno) {
		this.ctno = ctno;
	}

	@Override
	public String toString() {
		return "OptionDTO [optno=" + optno + ", optname=" + optname + ", optprice=" + optprice + ", ctno=" + ctno + "]";
	}
	
	
	
	
	
}
