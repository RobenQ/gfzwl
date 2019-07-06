package com.gfzwl.service;

import java.util.List;

import com.gfzwl.bean.Picture;

public interface PictureService {
	public List<Picture> selAll();
	public Picture selectPicture(String index);
	public void updatePicture(String name,String index);
}
