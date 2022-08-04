package com.dto;

public class ProductDTO {
	
	private int pdno;
	private String pdnm;
	private String epdnm;
	private int pdprice;
	private int ctno;
	
	
	public ProductDTO() {
		super();
	}
	
	public ProductDTO(int pdno, String pdnm, String epdnm, int pdprice, int ctno) {
		super();
		this.pdno = pdno;
		this.pdnm = pdnm;
		this.epdnm = epdnm;
		this.pdprice = pdprice;
		this.ctno = ctno;
	}
	public int getPdno() {
		return pdno;
	}
	public void setPdno(int pdno) {
		this.pdno = pdno;
	}
	public String getPdnm() {
		return pdnm;
	}
	public void setPdnm(String pdnm) {
		this.pdnm = pdnm;
	}
	public int getPdprice() {
		return pdprice;
	}
	public void setPdprice(int pdprice) {
		this.pdprice = pdprice;
	}
	public int getCtno() {
		return ctno;
	}
	public void setCtno(int ctno) {
		this.ctno = ctno;
	}

	public String getEpdnm() {
		return epdnm;
	}

	public void setEpdnm(String epdnm) {
		this.epdnm = epdnm;
	}
	
	
	
}
