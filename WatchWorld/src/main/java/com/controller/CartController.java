package com.controller;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.util.function.Supplier;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.DaoImpl.CartDaoImpl;
import com.DaoImpl.CategoryDaoImpl;
import com.DaoImpl.OrdersDaoImpl;
import com.DaoImpl.ProductDaoImpl;
import com.DaoImpl.SupplierDaoImpl;
import com.DaoImpl.UserDaoImpl;
import com.model.Category;
import com.model.Product;
import com.model.User;

@Controller
public class CartController {
	@RequestMapping("/modal")
	public String modal()
	{		return "modal"; 		
	}
	
	@RequestMapping("/admin")
	public String admin()
	{		return "admin"; 		
	}
	
	@Autowired
	SupplierDaoImpl supplierDaoImpl; 
	
	@Autowired
	CategoryDaoImpl categoryDaoImpl; 
	@Autowired
	ProductDaoImpl productDaoImpl; 
	
	@Autowired
	CartDaoImpl cartDaoImpl; 
	
	@Autowired
	OrdersDaoImpl ordersDaoImpl; 
	
	@Autowired
	UserDaoImpl userDaoImpl; 
	
	@RequestMapping(value="/proddetails/${p.pid}")
	public ModelAndView proddet(@PathVariable("pid")int pid)
	{
		ModelAndView mv=new ModelAndView();
		Product prod=productDaoImpl.findByPID(pid);
		mv.addObject("prod",prod);
		mv.setViewName("proddetails");
		return mv;
			}
	
	@RequestMapping(value="/addToCart",method=RequestMethod.POST)
	public String addtocart(HttpServletRequest request)
	{
		
		
		
		
	}
	
	
	
}
