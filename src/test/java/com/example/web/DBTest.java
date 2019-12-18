package com.example.web;









import javax.inject.Inject;



import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.domain.MemberVO;
import com.example.persistence.MemberDAO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/*.xml"})

public class DBTest {
	@Inject
	 private MemberDAO dao;
	 @Test
	 public void list() throws Exception{
		 dao.list();
	 }
	 @Test
	 public void insert(){
		 MemberVO vo=new MemberVO();
		 vo.setUserid("user04");
		 vo.setUserpw("pass");
		 vo.setUsername("¿Â»Ò∫Û");
		 dao.insert(vo);
	 }
	 @Test
	 public void delete(){
		 dao.delete("user04");
	 }
	 @Test
	 public void read(){
		 dao.read("user01");
	 }
	 @Test
	 public void update(){
		 MemberVO vo=new MemberVO();
		 
		 
		 vo.setUserid("user01");
		 vo.setUserpw("1234");
		 vo.setUsername("±Ë√·«‚");
		 vo.setEmail("aaa@icia.com");
		 dao.update(vo);
	 }
}
