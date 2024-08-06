package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Education;
 
public interface EducationService {
	public String addeducation(Education education);
	public List<Education> viewalleducations();
	public List<Education> vieweducationincity(String cityname);
	public Education vieweducationbyid(int id);
	public void deleteeducationbyid(int id);
}
