package com.gfzwl.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import com.gfzwl.bean.TeachResource;

@Component
public interface TeachResourceMapper {
	public List<TeachResource> selAll(@Param("type")String type);
	public List<TeachResource> selByTypeAndSection(@Param("type")String type,@Param("section")String section);
	public void insert(@Param("type")String type,@Param("name")String name,@Param("section")String section,@Param("path")String path);
	public void delete(@Param("type")String type,@Param("name")String name,@Param("path")String path);
}
