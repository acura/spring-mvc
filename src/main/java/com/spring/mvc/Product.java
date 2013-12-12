package com.spring.mvc;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "product")
public class Product {

	@Id 
	@GeneratedValue
	private Integer id;
	@Column(name = "product_name")
	private String productName;
	@Column(name = "price")
	private Double price;
	@Column(name="pricing_routine")
	private String pricingRoutine;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getPricingRoutine() {
		return pricingRoutine;
	}
	public void setPricingRoutine(String pricingRoutine) {
		this.pricingRoutine = pricingRoutine;
	}
	
}
