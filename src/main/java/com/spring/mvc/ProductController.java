package com.spring.mvc;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController {

//	@Autowired 
//	private ProductService productService = new ProductService();
	
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	 @RequestMapping(value = "/product/add", method = RequestMethod.GET)
	   public ModelAndView product() {
	      return new ModelAndView("editProduct", "productInstance", new Product());
	   }
	
	 @RequestMapping(value = "/product/save", method = RequestMethod.POST)
	  public String save(Model model) {
		 
		/*Product product = new Product();
		 
	    new ProductService().saveProduct(product);

	    model.addAttribute("pizzas", pizzas);*/
	    return "index";
	  }
	 
	 @RequestMapping(value = "/product/list", method = RequestMethod.GET)
	  public String list(Model model) {
		 
	    List<Product> products = new ProductService().getProducts();
	    
	    model.addAttribute("pizzas", products);
	    return "viewProduct";
	  }
}
