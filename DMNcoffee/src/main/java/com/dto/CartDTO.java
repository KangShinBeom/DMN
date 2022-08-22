package com.dto;

public class CartDTO {
	
	String pdno;
	String pdnm;
	int amount;
	int totalprice;
	String opt;
	String ctnm;
	
	
	public CartDTO() {
		super();
		// TODO Auto-generated constructor stub
	}


	public CartDTO(String pdno, String pdnm, int amount, int totalprice, String opt, String ctnm) {
		super();
		this.pdno = pdno;
		this.pdnm = pdnm;
		this.amount = amount;
		this.totalprice = totalprice;
		this.opt = opt;
		this.ctnm = ctnm;
	}


	public String getPdno() {
		return pdno;
	}


	public void setPdno(String pdno) {
		this.pdno = pdno;
	}


	public String getPdnm() {
		return pdnm;
	}


	public void setPdnm(String pdnm) {
		this.pdnm = pdnm;
	}


	public int getAmount() {
		return amount;
	}


	public void setAmount(int amount) {
		this.amount = amount;
	}


	public int getTotalprice() {
		return totalprice;
	}


	public void setTotalprice(int totalprice) {
		this.totalprice = totalprice;
	}


	public String getOpt() {
		return opt;
	}


	public void setOpt(String opt) {
		this.opt = opt;
	}


	public String getCtnm() {
		return ctnm;
	}


	public void setCtnm(String ctnm) {
		this.ctnm = ctnm;
	}


	@Override
	public String toString() {
		return "CartDTO [pdno=" + pdno + ", pdnm=" + pdnm + ", amount=" + amount + ", totalprice=" + totalprice
				+ ", opt=" + opt + ", ctnm=" + ctnm + "]";
	}


	
	
	
	
	
	
}
