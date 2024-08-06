package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Hotel;

public interface HotelService 
{
	public String addhotel(Hotel h);
	public List<Hotel> viewallhotels();
	public Hotel viewhotelbyid(int id);
	public List<Hotel> viewallhotelsincity(String cityName); 

}
