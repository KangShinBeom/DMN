package com.dto;

public class CartDTO {
	
	String pdno;
	String pdnm;
	int amount;
	int totalprice;
	String opt1;
	String opt2;
	
	public CartDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CartDTO(String pdno, String pdnm, int amount, int totalprice, String opt1, String opt2) {
		super();
		this.pdno = pdno;
		this.pdnm = pdnm;
		this.amount = amount;
		this.totalprice = totalprice;
		this.opt1 = opt1;
		this.opt2 = opt2;
	}

	@Override
	public String toString() {
		return "CartDTO [pdno=" + pdno + ", pdnm=" + pdnm + ", amount=" + amount + ", totalprice=" + totalprice
				+ ", opt1=" + opt1 + ", opt2=" + opt2 + "]";
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

	public String getOpt1() {
		return opt1;
	}

	public void setOpt1(String opt1) {
		this.opt1 = opt1;
	}

	public String getOpt2() {
		return opt2;
	}

	public void setOpt2(String opt2) {
		this.opt2 = opt2;
	}
	
	
	
	
}
