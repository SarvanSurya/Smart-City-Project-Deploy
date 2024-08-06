package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Restaurant;


public interface RestaurantService {
	public String addrestaurant(Restaurant restaurant);
	public List<Restaurant> viewallrestaurants();
	public Restaurant viewrestaurantbyid(int id);
	public List<Restaurant> viewallrestaurantsincity(String cityname);
	public void deleterestaurantbyid(int id);
}
