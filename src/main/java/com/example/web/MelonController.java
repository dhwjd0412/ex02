package com.example.web;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.domain.MelonVO;
import com.example.persistence.MelonDAO;

@Controller
public class MelonController {
	@Inject
	MelonDAO dao;
	
	@RequestMapping(value="/slist", method=RequestMethod.GET)
	public String list(Model model){
		model.addAttribute("list", dao.list());
		return "slist";
	}
	
	@RequestMapping(value="/sinsert", method=RequestMethod.GET)
	public String insert(MelonVO vo){
		return "sinsert";
	}
	
	@RequestMapping(value="/sinsert", method=RequestMethod.POST)
	public String insertPost(MelonVO vo){
		dao.insert(vo);
		return "redirect:slist";
	}
	
	@RequestMapping(value="/sread", method=RequestMethod.GET)
	public String read(int id,Model model){
		model.addAttribute("read",dao.read(id));
		return "aread";
	}
	
	@RequestMapping(value="/supdate", method=RequestMethod.POST)
	public String update(MelonVO vo){
		dao.update(vo);
		return "redirect:slist";
	}
	
	@RequestMapping(value="/sdelete", method=RequestMethod.POST)
	public String delete(MelonVO vo){
		dao.delete(vo.getId());
		return "redirect:slist";
	}
}
