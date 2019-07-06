package com.gfzwl.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gfzwl.bean.TeachResource;
import com.gfzwl.mapper.TeachResourceMapper;
import com.gfzwl.service.TeachResourceService;

@Service
public class TeachResourceServiceImpl implements TeachResourceService {
	
	@Autowired
	private TeachResourceMapper teachResourceMapper;
	
	public TeachResourceServiceImpl() {
		super();
	}

	@Override
	public List<TeachResource> selAll(String type) {
		List<TeachResource> teachResource = teachResourceMapper.selAll(type);
		return teachResource;
	}

	@Override
	public void insert(String type, String name, String select, String path) {
		teachResourceMapper.insert(type, name, select, path);
		
	}

	@Override
	public void delete(String type, String name, String path) {
		teachResourceMapper.delete(type, name, path);
		
	}

	@Override
	public List<TeachResource> selByTypeAndSection(String type, String section) {
		return teachResourceMapper.selByTypeAndSection(type, section);
	}

}
