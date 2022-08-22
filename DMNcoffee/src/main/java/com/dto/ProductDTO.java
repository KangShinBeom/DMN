package com.dto;

public class ProductDTO {
	
	private int pdno;
	private String pdnm;
	private String epdnm;
	private int pdprice;
	private int ctno;
	private String ctnm;
	
	public ProductDTO() {
		super();
	}

	public ProductDTO(int pdno, String pdnm, String epdnm, int pdprice, int ctno, String ctnm) {
		super();
		this.pdno = pdno;
		this.pdnm = pdnm;
		this.epdnm = epdnm;
		this.pdprice = pdprice;
		this.ctno = ctno;
		this.ctnm = ctnm;
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

	public String getEpdnm() {
		return epdnm;
	}

	public void setEpdnm(String epdnm) {
		this.epdnm = epdnm;
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

	public String getCtnm() {
		return ctnm;
	}

	public void setCtnm(String ctnm) {
		this.ctnm = ctnm;
	}
	
	
	
	
	
}
