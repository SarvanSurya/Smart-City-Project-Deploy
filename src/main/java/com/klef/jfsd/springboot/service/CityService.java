package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.City;

public interface CityService 
{
	public String addcity(City c);
	public List<City> viewallcities();
	public City viewcitybyid(int id);
	public String updatecity(City c);

}
