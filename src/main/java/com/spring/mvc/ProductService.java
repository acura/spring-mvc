package com.spring.mvc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

public class ProductService {

	@Autowired 
	private ProductDAO dao;
	
	public boolean saveProduct(Product product)
	{
		return dao.saveProduct(product);
	}
	
	public Product getProductById(Integer id)
	{
		return dao.getProductById(id);
	}
	
	public List<Product> getProducts()
	{
		return dao.getProducts();
	}
	
}
