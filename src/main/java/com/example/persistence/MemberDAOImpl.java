package com.example.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.domain.MemberVO;

@Repository

public class MemberDAOImpl implements MemberDAO{
	@Inject
	SqlSession session;
	private static  final String namespace="memberMapper";
	
	
	@Override
	public List<MemberVO> list() {
		return session.selectList(namespace+ ".list");
	}


	@Override
	public void insert(MemberVO vo) {
		session.insert(namespace+".insert", vo); 
		
	}


	@Override
	public void delete(String userid) {
		session.delete(namespace+".delete", userid);
	}


	@Override
	public MemberVO read(String userid) {
		// TODO Auto-generated method stub
		return session.selectOne(namespace +".read", userid);
		//하나를 리턴하면 selectOne()
		//하나 이상을 리턴하면 selectList()
	}


	@Override
	public void update(MemberVO vo) {
		session.update(namespace+".update",vo);
		
	}

}
