package com.gfzwl.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.print.attribute.HashAttributeSet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gfzwl.bean.Picture;
import com.gfzwl.bean.TeachResource;
import com.gfzwl.service.PictureService;
import com.gfzwl.service.TeachResourceService;
import com.gfzwl.utils.AdminUtil;

@RequestMapping("/user")
@Controller
public class UserController {
	
	@Autowired
	private TeachResourceService teachResourceService;
	@Autowired
	private PictureService pictureService;
	
//	@RequestMapping(value="index")
//	public ModelAndView index() {
//		ModelAndView mv = new ModelAndView();
//		Picture img1 = pictureService.selectPicture("图1");
//		Picture img2 = pictureService.selectPicture("图2");
//		Picture img3 = pictureService.selectPicture("图3");
//		Picture img4 = pictureService.selectPicture("图4");
//		Picture img5 = pictureService.selectPicture("图5");
//		mv.addObject("img1", img1.getName());
//		mv.addObject("img2", img2.getName());
//		mv.addObject("img3", img3.getName());
//		mv.addObject("img4", img4.getName());
//		mv.addObject("img5", img5.getName());
//		mv.setViewName("/jsp/ind");
//		return mv;
//	}
	
	@RequestMapping(value="tomain")
	public ModelAndView toMain(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		List<TeachResource> resource1 = (List<TeachResource>) teachResourceService.selAll("课件");
		List<TeachResource> resource2 = (List<TeachResource>) teachResourceService.selAll("电子教案");
		List<TeachResource> resource3 = (List<TeachResource>) teachResourceService.selAll("视频");
		List<TeachResource> resource4 = (List<TeachResource>) teachResourceService.selAll("实验指导书");
		List<TeachResource> resource5 = (List<TeachResource>) teachResourceService.selAll("虚拟仿真");
		List<TeachResource> resource6 = (List<TeachResource>) teachResourceService.selAll("matlab仿真");
		List<TeachResource> resource7 = (List<TeachResource>) teachResourceService.selAll("习题");
		List<TeachResource> resource8 = (List<TeachResource>) teachResourceService.selAll("试题");
		int resource1Num = resource1.size();
		int resource2Num = resource2.size();
		int resource3Num = resource3.size();
		int resource4Num = resource4.size();
		int resource5Num = resource5.size();
		int resource6Num = resource6.size();
		int resource7Num = resource7.size();
		int resource8Num = resource8.size();
		mv.addObject("resource1Num", resource1Num);
		mv.addObject("resource2Num", resource2Num);
		mv.addObject("resource3Num", resource3Num);
		mv.addObject("resource4Num", resource4Num);
		mv.addObject("resource5Num", resource5Num);
		mv.addObject("resource6Num", resource6Num);
		mv.addObject("resource7Num", resource7Num);
		mv.addObject("resource8Num", resource8Num);
		mv.setViewName("/index");
		return mv;
	}
	
	@RequestMapping(value="/downfile")
	public void downFile(HttpServletRequest request,HttpServletResponse response) throws IOException {
		String path = request.getParameter("path");
		String name = request.getParameter("name");
		System.out.println("路径："+path+"   文件名称："+name);
//		String path2 = request.getServletContext().getRealPath(path)+ "\\"+"login.jpg";
//		System.out.println(path2);
		AdminUtil.download(request, response,path,name,name);
	}
	
	@RequestMapping(value="resource")
	public ModelAndView resource(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String type = request.getParameter("type");
		String section = request.getParameter("section");
		mv.addObject("type", type);
		mv.addObject("section", section);
		System.out.println(type);
		mv.setViewName("/jsp/teachresource");
		return mv;
	}
	
	@RequestMapping(value="resource2")
	public ModelAndView resource2(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String type = request.getParameter("type");
		String section = request.getParameter("section");
		mv.addObject("type", type);
		mv.addObject("section", section);
		System.out.println(type);
		mv.setViewName("/jsp/teachresource2");
		return mv;
	}
	
	@RequestMapping(value="resourcelist")
	public ModelAndView resourceList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String type = request.getParameter("type");
		String section = request.getParameter("section");
		System.out.println(type+"==="+section);
		if (section.equals("0")) {
			List<TeachResource> resourcesList = teachResourceService.selAll(type);
			mv.addObject("resourcesList", resourcesList);
		} else {
			List<TeachResource> resourcesList = teachResourceService.selByTypeAndSection(type, section);
			mv.addObject("resourcesList", resourcesList);
		}
		
		mv.setViewName("/jsp/resourcelist");
		return mv;
	}
	
	@RequestMapping(value="resourcelist2")
	public ModelAndView resourceList2(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String type = request.getParameter("type");
		String section = request.getParameter("section");
		System.out.println(type+"==="+section);
		if (section.equals("0")) {
			List<TeachResource> resourcesList = teachResourceService.selAll(type);
			mv.addObject("resourcesList", resourcesList);
		} else {
			List<TeachResource> resourcesList = teachResourceService.selByTypeAndSection(type, section);
			mv.addObject("resourcesList", resourcesList);
		}
		
		mv.setViewName("/jsp/resourcelist2");
		return mv;
	}
	
	@RequestMapping(value="resourcelist3")
	@ResponseBody
	public Map<String, Object> resourceList3(HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		String type = request.getParameter("type");
		String section = request.getParameter("section");
		System.out.println(type+"==="+section);
		if (section.equals("0")) {
			List<TeachResource> resourcesList = teachResourceService.selAll(type);
			map.put("list", resourcesList);
			return map;
		} else {
			List<TeachResource> resourcesList = teachResourceService.selByTypeAndSection(type, section);
			map.put("list", resourcesList);
			return map;
		}
	}
	
	@RequestMapping(value="to2_1_1")
	public String to2_1_1() {
		return "/jsp/2_1_1";
	}
	
	@RequestMapping(value="to2_2_1")
	public String to2_2_1() {
		return "/jsp/2_2_1";
	}
	
	@RequestMapping(value="to2_3_1")
	public String to2_3_1() {
		return "/jsp/2_3_1";
	}
	
	@RequestMapping(value="to3_1_1")
	public String to3_1_1() {
		return "/jsp/3_1_1";
	}
	
	@RequestMapping(value="to3_2_1")
	public String to3_2_1() {
		return "/jsp/3_2_1";
	}
	
	@RequestMapping(value="to4_1_1")
	public String to4_1_1() {
		return "/jsp/4_1_1";
	}
	
	@RequestMapping(value="to4_1_1s")
	public ModelAndView to4_1_1s() {
		ModelAndView mv = new ModelAndView();
		List<TeachResource> resource = (List<TeachResource>) teachResourceService.selAll("课件");
		mv.addObject("resource", resource);
		mv.setViewName("/jsp/4_1_1s");
		return mv;
	}
	
	@RequestMapping(value="to4_2_1")
	public String to4_2_1() {
		return "/jsp/4_2_1";
	}
	
	@RequestMapping(value="to4_2_1s")
	public ModelAndView to4_2_1s() {
		ModelAndView mv = new ModelAndView();
		List<TeachResource> resource = (List<TeachResource>) teachResourceService.selAll("电子教案");
		mv.addObject("resource", resource);
		mv.setViewName("/jsp/4_2_1s");
		return mv;
	}
	
	@RequestMapping(value="to4_3_1")
	public String to4_3_1() {
		return "/jsp/4_3_1";
	}
	
	@RequestMapping(value="to4_3_1s")
	public ModelAndView to4_3_1s() {
		ModelAndView mv = new ModelAndView();
		List<TeachResource> resource = (List<TeachResource>) teachResourceService.selAll("视频");
		mv.addObject("resource", resource);
		mv.setViewName("/jsp/4_3_1s");
		return mv;
	}
	
	@RequestMapping(value="/showvideo")
	public ModelAndView showvideo(HttpServletRequest request,HttpServletResponse response) throws IOException {
		String path = request.getParameter("path");
		String name = request.getParameter("name");
		System.out.println("路径："+path+"   文件名称："+name);
		ModelAndView mv = new ModelAndView();
//		String path2 = request.getServletContext().getRealPath(path)+ "\\"+"login.jpg";
//		System.out.println(path2);
//		String filePath = request.getSession().getServletContext().getRealPath(path)+"\\"+name;
//		System.out.println(filePath);
		mv.addObject("name", name);
		mv.addObject("filePath", path);
		mv.setViewName("/jsp/showVideo");
		return mv;
	}
	
	@RequestMapping(value="to4_4_1")
	public String to4_4_1() {
		return "/jsp/4_4_1";
	}
	
	@RequestMapping(value="to5_1_1")
	public String to5_1_1() {
		return "/jsp/5_1_1";
	}
	
	@RequestMapping(value="to5_1_1s")
	public ModelAndView to5_1_1s() {
		ModelAndView mv = new ModelAndView();
		List<TeachResource> resource = (List<TeachResource>) teachResourceService.selAll("实验指导书");
		mv.addObject("resource", resource);
		mv.setViewName("/jsp/5_1_1s");
		return mv;
	}
	
	@RequestMapping(value="to5_2_1")
	public String to5_2_1() {
		return "/jsp/5_2_1";
	}
	
	@RequestMapping(value="to5_2_1s")
	public ModelAndView to5_2_1s() {
		ModelAndView mv = new ModelAndView();
		List<TeachResource> resource = (List<TeachResource>) teachResourceService.selAll("虚拟仿真");
		mv.addObject("resource", resource);
		mv.setViewName("/jsp/5_2_1s");
		return mv;
	}
	
	@RequestMapping(value="to5_3_1")
	public String to5_3_1() {
		return "/jsp/5_3_1";
	}
	
	@RequestMapping(value="to5_3_1s")
	public ModelAndView to5_3_1s() {
		ModelAndView mv = new ModelAndView();
		List<TeachResource> resource = (List<TeachResource>) teachResourceService.selAll("matlab仿真");
		mv.addObject("resource", resource);
		mv.setViewName("/jsp/5_3_1s");
		return mv;
	}
	
	@RequestMapping(value="to6_1_1")
	public String to6_1_1() {
		return "/jsp/6_1_1";
	}
	
	@RequestMapping(value="to6_1_1s")
	public ModelAndView to6_1_1s() {
		ModelAndView mv = new ModelAndView();
		List<TeachResource> resource = (List<TeachResource>) teachResourceService.selAll("习题");
		mv.addObject("resource", resource);
		mv.setViewName("/jsp/6_1_1s");
		return mv;
	}
	
	@RequestMapping(value="to6_2_1")
	public String to6_2_1() {
		return "/jsp/6_2_1";
	}
	
	@RequestMapping(value="to6_2_1s")
	public ModelAndView to6_2_1s() {
		ModelAndView mv = new ModelAndView();
		List<TeachResource> resource = (List<TeachResource>) teachResourceService.selAll("试题");
		mv.addObject("resource", resource);
		mv.setViewName("/jsp/6_2_1s");
		return mv;
	}
}
