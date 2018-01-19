package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.DaoImpl.CategoryDaoImpl;
import com.DaoImpl.ProductDaoImpl;
import com.DaoImpl.UserDaoImpl;
import com.model.User;

@Controller
public class indexController {
@Autowired
ProductDaoImpl productDaoImpl;

@Autowired
	UserDaoImpl userDaoImpl;

private CategoryDaoImpl categoryDaoImpl;
	@RequestMapping("/")
	public String index()
	{
		return "index"; 
		
	}
	
	@RequestMapping(value="/goToRegister",method=RequestMethod.GET)
	public ModelAndView goToRegister() {
		ModelAndView mv=new ModelAndView();
		mv.addObject("user",new User());
		mv.setViewName("register");
		return mv;
	}
	
	@RequestMapping(value="/saveRegister",method=RequestMethod.POST)
	public ModelAndView saveRegister(@ModelAttribute("user")User user,BindingResult result)
	{
		ModelAndView mav=new ModelAndView();
if(result.hasErrors()) {
	mav.setViewName("register");
	return mav;
}	else {	
		user.setRole("ROLE_USER");
		userDaoImpl.insertUser(user);
		mav.setViewName("index");
		return mav;}
	}
	
	@RequestMapping(value="/productCustList")
	public ModelAndView getCustTable(@RequestParam("cid")int cid)
	{
		ModelAndView mv=new ModelAndView();
		mv.addObject("prodList",productDaoImpl.retrieve());
		mv.setViewName("ProdCustList");
		return mv;
	}
	@ModelAttribute
	public void getData(Model m)
			
	{
		
		m.addAttribute("catList",categoryDaoImpl.retrieve());
		
	}
	
	@RequestMapping(value="/goToLogin")
	public String goToLogin() {
		return "login";	}
	

	@RequestMapping(value="/userLogged")
	public String userLogged() {
		return "redirect:/index";	}
	

	@RequestMapping(value="/error")
	public String userError() {
		
		return "error";	}
	
	@RequestMapping(value="/reLogin")
	public String relogin() {
		return "redirect:/goToLogin";	}
}

