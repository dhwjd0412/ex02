package com.example.web;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.domain.MelonVO;
import com.example.persistence.MelonDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/*.xml"})


public class DBTest3 {
	@Inject
	private MelonDAO dao;
	@Test
	public void list() throws Exception{
		dao.list();
	}
	@Test
	public void insert(){
		MelonVO vo=new MelonVO();
		vo.setName("수영");
		vo.setAddress("서울 강남");
		vo.setCompany("sm엔터테인먼트");
		vo.setYear(29);
		dao.insert(vo);
	}
	@Test
	public void read(){
		dao.read(2);
	}
	@Test
	public void delete(){
		dao.delete(3);
	}
	@Test
	public void update(){
		MelonVO vo=new MelonVO();
		vo.setName("영수");
		vo.setAddress("서울 연남동");
		vo.setCompany("몰라엔터테인먼트");
		vo.setYear(1);
		dao.update(vo);
	}
}
