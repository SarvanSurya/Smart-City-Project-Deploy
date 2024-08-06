package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.RentalBookings;

public interface RentalBookingService {
	
	public String addbooking(RentalBookings rb);
	public List<RentalBookings> viewallrentalbookings();
	public List<RentalBookings> getDetailsByEmail(String email);
}
