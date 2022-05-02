package com.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Dao.ToDODaw;
import com.entity.ToDo;

@Controller
public class ToDoController {
	
	@Autowired
	ServletContext servletContext;
	
	@Autowired
	ToDODaw toDODaw;
	
	@RequestMapping("/home")
	public String home(Model model) {
		String page = "home";
		List<ToDo> list = this.toDODaw.geToDos();
		model.addAttribute("todos", list);
		model.addAttribute("page", page);
		system.out.println("this is controller method");
		return"home";
	}
	
	@RequestMapping("/add")
	public String addToDO(Model model) {
		ToDo toDo = new ToDo();
		model.addAttribute("page", "add");
		model.addAttribute("todo",toDo);
		
		return "home";
	}
	
	@RequestMapping(value = "/savetodo", method = RequestMethod.POST)
	public String savetodo(@ModelAttribute("todo") ToDo tDo,  Model model) {
		tDo.setDate(new Date());
		this.toDODaw.save(tDo);
		System.out.println(tDo);
		model.addAttribute("msg", "successfully added");
		return"home";
	}
	
	//LocalDateTime currentTime = LocalDateTime.parse(LocalDateTime.now().toString(), DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
	
}
