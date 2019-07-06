package com.gfzwl.service;

import java.util.List;

import com.gfzwl.bean.TeachResource;

public interface TeachResourceService {
	public List<TeachResource> selAll(String type);
	public List<TeachResource> selByTypeAndSection(String type,String section);
	public void insert(String type,String name,String select,String path);
	public void delete(String type,String name,String path);
}
