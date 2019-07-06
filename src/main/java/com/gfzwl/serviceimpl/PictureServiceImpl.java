package com.gfzwl.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gfzwl.bean.Picture;
import com.gfzwl.mapper.PictureMapper;
import com.gfzwl.service.PictureService;

@Service
public class PictureServiceImpl implements PictureService{
	
	@Autowired
	private PictureMapper pictureMapper;
	
	
	@Override
	public List<Picture> selAll() {
		return pictureMapper.selAll();
	}


	@Override
	public Picture selectPicture(String index) {
		return pictureMapper.selectPicture(index);
	}


	@Override
	public void updatePicture(String name, String index) {
		pictureMapper.updatePicture(name, index);
	}

}
