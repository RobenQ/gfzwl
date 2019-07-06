package com.gfzwl.mapper;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import com.gfzwl.bean.Admin;

@Component
public interface AdminMapper {
	public Admin login(@Param("id")int id,@Param("password")String password);
}
