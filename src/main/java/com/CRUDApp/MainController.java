package com.CRUDApp;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import com.Dao.ProductDao;
import com.model.Product;

@Controller
public class MainController {
	
	@Autowired
	ProductDao pDao;
	
	@RequestMapping("/home")
	public String homepage(Model model) {
		List<Product> pList = pDao.getaProducts();
		System.out.println("sysout : "+pList);
		model.addAttribute("products", pList);
		return"home";
	}
	
	@RequestMapping("/add")
	public String addProduct(Model model) {
		model.addAttribute("title", "add product");
		return"addPage";
	}
	
	@RequestMapping( value = "/handelProduct" ,method = RequestMethod.POST)
	public RedirectView handelproduct(@ModelAttribute Product product,HttpServletRequest request) {
		System.out.println(product);
		pDao.createProduct(product);
		
		RedirectView redirectView =  new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/home");
		return redirectView;
		
	}
	
	@RequestMapping("/delete/{product_id}")
	public RedirectView deleView(@PathVariable("product_id") Integer pidInteger,HttpServletRequest request) {
		RedirectView redirectView = new RedirectView();
		pDao.deleteProduct(pidInteger);
		redirectView.setUrl(request.getContextPath()+"/home	");
		return redirectView;
	}
	
	@RequestMapping("/update/{product_id}")
	public String updateForm(@PathVariable("product_id") Integer idInteger,Model model) {
		
		Product product = this.pDao.getProduct(idInteger);
		model.addAttribute("product", product);
		return("update");
	}
}
