package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.HotelBookings;
import com.klef.jfsd.springboot.model.RentalBookings;

public interface HotelBookingService {
  public String addbooking(HotelBookings hb);
  public List<HotelBookings> viewallhotelbookings();
	public List<HotelBookings> getDetailsByEmail(String email);

}