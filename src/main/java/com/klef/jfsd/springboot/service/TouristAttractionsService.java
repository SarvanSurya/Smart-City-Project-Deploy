package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.TouristAttractions;

public interface TouristAttractionsService
{
	public String insert(TouristAttractions ta);
	public List<TouristAttractions> viewalltouristattractions();
	public TouristAttractions viewtouristattractionsbyid(int id);
	public TouristAttractions viewtouristattractionsincity(String cityname);
	public String updatetouristattractions(TouristAttractions ta);

}
