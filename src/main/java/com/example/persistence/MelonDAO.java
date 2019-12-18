package com.example.persistence;

import java.util.List;



import com.example.domain.MelonVO;

public interface MelonDAO {
	public List<MelonVO> list();
	public void insert(MelonVO vo);
	public MelonVO read(int id);
	public void delete(int id);
	public void update(MelonVO vo);
}
