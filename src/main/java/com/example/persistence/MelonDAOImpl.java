package com.example.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.domain.AddressVO;
import com.example.domain.MelonVO;
@Repository
public class MelonDAOImpl implements MelonDAO {
	@Inject
	SqlSession session;
	private static final String namespace="melonMapper";
	@Override
	public List<MelonVO> list() {
		
		return session.selectList(namespace+".list");
	}
	@Override
	public void insert(MelonVO vo) {
		session.insert(namespace+".insert",vo);
		
	}
	@Override
	public MelonVO read(int id) {
		
		return session.selectOne(namespace+ ".read",id);
		
		
	}
	@Override
	public void delete(int id) {
		session.delete(namespace+ ".delete" ,id); 
		
	}
	@Override
	public void update(MelonVO vo) {
		session.update(namespace+".update",vo);
		
	}
}
