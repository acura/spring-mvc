package com.spring.mvc;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@SuppressWarnings({"unchecked", "rawtypes"})
public class ProductDAO {
	
	public ProductDAO() {
		System.out.println("ProductDAO");
	}
	
	@Autowired 
	private SessionFactory sessionFactory;
	
	@Transactional
	public boolean saveProduct(Product product)
	{
		Session session = sessionFactory.getCurrentSession();
		
		try {
			if (product.getId() != null)
			{
				Product productDBObj = (Product) session.get(Product.class, product.getId());
				
				productDBObj.setProductName(product.getProductName());
				productDBObj.setPrice(product.getPrice());
				productDBObj.setPricingRoutine(product.getPricingRoutine());
				
				session.update(productDBObj);
			}
			else
			{
				session.save(product);
			}
			session.flush();
		} 
		catch (Exception e) {
			// TODO: handle exception
		}
		return true;
	}
	
	@Transactional
	public Product getProductById(Integer id)
	{
		try {
			Product product = (Product)sessionFactory.getCurrentSession().get(Product.class, id);
			return product;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	
	@Transactional
	public List<Product> getProducts()
	{
		try {
			Query fromClauseQuery = 
				sessionFactory.getCurrentSession().createQuery("from Product product order by product.id");
			fromClauseQuery.setCacheable(false);
			List<Product> list = fromClauseQuery.list();
			
			return list != null && !list.isEmpty() ? list : null;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
}
